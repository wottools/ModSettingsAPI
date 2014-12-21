package {
	import flash.display.*;
	import flash.events.*;
	import flash.utils.*;
	import net.wg.infrastructure.interfaces.entity.*;
	import scaleform.clik.constants.*;
	import scaleform.clik.core.*;
	import scaleform.clik.interfaces.*;
	import scaleform.clik.controls.*;
	import flash.display.Loader;
	import flash.net.URLRequest;
	public class MyScrollPane extends UIComponent {
		public var thumbOffset: Object;
		public var _scrollBar: IScrollBar;
		protected var _scrollBarValue: Object;
		protected var _scrollPosition: uint = 0;
		protected var _scrollStepFactor: Number = 1;
		public var maskObject: MovieClip;
		public var background: Sprite;
		private var _hideIfNotNeeded: Boolean;
		protected var _target: DisplayObject;
		protected var _autoScrollBar: Boolean = false;
		public static const SCROLL_UPDATE_INV: String = "scrollUpdInv";
		public static const SCROLL_POSITION_INV: String = "scrollPosInv";
		public static const TARGET_INVALID: String = "targetInv";

		public function MyScrollPane() {
			//SettingsWindowUI.send("MyScrollPane()", 1);
			try {
				var bg = new Window_BGForm();
				bg.height = 700;
				this.addChild(bg);
				this._scrollBarValue = "ScrollBar";
				this._hideIfNotNeeded = false;
				//SettingsWindowUI.send("MyScrollPane() =" + this._scrollBar, 1);
			} catch (error: Error) {
				SettingsWindowUI.send("MyScrollPane() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}

			return;
		} // end function

		override protected function configUI(): void {
			//SettingsWindowUI.send("configUI()", 1);
			try {
				super.configUI();
				if (!this.maskObject) {
					this.maskObject = new MovieClip();
					addChild(this.maskObject);
				}
				if (!this.background) {
					this.background = new Sprite();
					addChildAt(this.background, 0);
					this.background.addEventListener(MouseEvent.MOUSE_WHEEL, this.targetMouseWheelHandler, false, 0, true);
				}
				mask = this.maskObject;
			} catch (error: Error) {
				SettingsWindowUI.send("MyScrollPane::configUI() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
			return;
		} // end function

		override protected function draw(): void {
			//SettingsWindowUI.send("MyScrollPane::draw()", 1);
			try {
				super.draw();
				if (isInvalid(TARGET_INVALID)) {
					this.applyTargetChanges();
				}
				if (isInvalid(InvalidationType.SCROLL_BAR)) {
					this.createScrollBar();
					invalidate(SCROLL_POSITION_INV);
				}
				if (isInvalid(InvalidationType.SIZE, SCROLL_POSITION_INV)) {
					this.drawScrollBar();
					this.drawMask();
					this.drawBackground();
					invalidate(SCROLL_UPDATE_INV);
				}
				if (isInvalid(SCROLL_UPDATE_INV)) {
					this.applyScrollBarUpdating();
				}
			} catch (error: Error) {
				SettingsWindowUI.send("draw() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}


			return;
		} // end function

		protected function applyTargetChanges(): void {
			this.removeSource();
			if (this._target) {
				addChild(this._target);
				this._target.addEventListener(MouseEvent.MOUSE_WHEEL, this.targetMouseWheelHandler, false, 0, true);
			}
			return;
		} // end function

		protected function drawBackground(): void {
			var _loc_1: * = this.background.graphics;
			_loc_1.clear();
			_loc_1.beginFill(0, 0);
			_loc_1.drawRect(0, 0, _width, this.availableHeight);
			_loc_1.endFill();
			return;
		} // end function

		protected function drawMask(): void {
			var _loc_1: * = this.maskObject.graphics;
			_loc_1.clear();
			_loc_1.beginFill(16777215, 1);
			_loc_1.drawRect(0, 0, _width, this.availableHeight);
			_loc_1.endFill();
			return;
		} // end function

		private function targetMouseWheelHandler(event: MouseEvent): void {
			this.scrollPosition = this.scrollPosition - event.delta*5;
			//SettingsWindowUI.send("targetMouseWheelHandler scrollPosition=" + this.scrollPosition + " | " + event.delta, 1);
			return;
		} // end function

		protected function applyScrollBarUpdating(): void {
			//SettingsWindowUI.send("#############applyScrollBarUpdating", 1);
			var _loc_6: * = NaN;
			var _loc_7: * = NaN;
			var _loc_8: * = NaN;
			var _loc_1: * = this.scrollPageSize;
			var _loc_2: * = 0;
			var _loc_3: * = this.maxScroll;
			//SettingsWindowUI.send("#############applyScrollBarUpdating" + this.scrollBar, 1);
			this.scrollBar.setScrollProperties(_loc_1, _loc_2, _loc_3);
			var _loc_4: * = (this.scrollBar.position - _loc_2) / (_loc_3 - _loc_2);
			var _loc_5: * = !(isNaN(_loc_4) || isNaN(_loc_1) || _loc_3 <= 0 || _loc_3 == Infinity);

			if (isNaN(_loc_4) || isNaN(_loc_1) || _loc_3 <= 0 || _loc_3 == Infinity) {
				this._scrollPosition = 0;
			}
			if (this._target) {
				_loc_6 = this.getContentHeight() - _height > 0 ? (this.getContentHeight() - _height) : (0);
				_loc_7 = this._scrollStepFactor * this._scrollPosition;
				_loc_8 = Math.round(_loc_6 >= _loc_7 ? (_loc_7) : (_loc_6));
				this._target.y = -_loc_8;
			}
			//SettingsWindowUI.send("applyScrollBarUpdating visible=" + _loc_5, 1);
			this.scrollBar.visible = _loc_5;
			this.scrollBar.position = this._scrollPosition;
			this.scrollBar.trackScrollPageSize = _loc_1;
			//SettingsWindowUI.send("applyScrollBarUpdating position=" + this._scrollPosition, 1);
			return;
		} // end function

		protected function drawScrollBar(): void {
			//SettingsWindowUI.send("!!!!!!!!!!!!!!!!!!!!drawScrollBar", 1);
			try {
				if (!this._autoScrollBar) {
					//SettingsWindowUI.send("drawScrollBar returning", 5);
					return;
				}
				this._scrollBar.x = _width - this._scrollBar.width;
				this._scrollBar.height = this.availableHeight;
				this._scrollBar.validateNow();
				//SettingsWindowUI.send("drawScrollBar x=" + this._scrollBar.x + " height=" + this._scrollBar.height, 1);
			} catch (error: Error) {
				SettingsWindowUI.send("drawScrollBar() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}

			return;
		} // end function

		public function get availableHeight(): Number {
			return Math.round(_height);
		} // end function

		public function get target(): DisplayObject {
			return this._target;
		} // end function

		public function set target(param1: DisplayObject): void {
			this._target = param1;
			if (_invalidHash) {
				invalidate(TARGET_INVALID);
			}
			return;
		} // end function

		public function get scrollPageSize(): Number {
			return Math.round(_height / this._scrollStepFactor);
		} // end function

		private function removeSource(): DisplayObject {
			var _loc_1: * = null;
			if (this._target) {
				_loc_1 = this._target.parent;
				if (_loc_1) {
					_loc_1.removeChild(this._target);
				}
				this._target.removeEventListener(MouseEvent.MOUSE_WHEEL, this.targetMouseWheelHandler);
			}
			return this._target;
		} // end function

		public function get scrollBar(): Object {
			return this._scrollBar;
		} // end function

		public function set scrollBar(param1: Object): void {
			//SettingsWindowUI.send("useless setter param=" + param1, 1);
			this._scrollBarValue = param1;
			invalidate(InvalidationType.SCROLL_BAR);
			return;
		} // end function

		protected function createScrollBar(): void {
			//SettingsWindowUI.send("#####createScrollBar()", 1);
			var _loc_1: * = null;
			var _loc_2: * = null;
			var _loc_3: * = null;
			if (this._scrollBar) {
				//SettingsWindowUI.send("createScrollBar removing old scrollbar", 1);
				this._scrollBar.removeEventListener(Event.SCROLL, this.handleScroll, false);
				this._scrollBar.removeEventListener(Event.CHANGE, this.handleScroll, false);
				this._scrollBar.focusTarget = null;
				if (this.contains(this._scrollBar as DisplayObject)) {
					this.removeChild(this._scrollBar as DisplayObject);
				}
				this._scrollBar = null;
			}
			if (!this._scrollBarValue || this._scrollBarValue == "") {
				//SettingsWindowUI.send("#####createScrollBar() return 1", 1);
				return;
			}
			this._autoScrollBar = false;
			if (this._scrollBarValue is String) {
				/*
				if (parent != null) {
					_loc_1 = ModsSettings.myScrollPaneScrollbar as IScrollBar; //parent.getChildByName(this._scrollBarValue.toString())// as IScrollBar;
					SettingsWindowUI.send("#####createScrollBar() fetching value from parent =" + _loc_1, 1);
				}
				*/
				if (_loc_1 == null) {
					//SettingsWindowUI.send("#####createScrollBar() getting def by name", 1);

					_loc_2 = getDefinitionByName(this._scrollBarValue.toString()) as Class;
					//SettingsWindowUI.send("#####createScrollBar() getting def by name " + _loc_2, 1);
					if (_loc_2) {

						_loc_1 = new _loc_2 as IScrollBar;
					}
					if (_loc_1) {
						this._autoScrollBar = true;
						_loc_3 = _loc_1 as Object;
						if (_loc_3 && this.thumbOffset) {
							_loc_3.offsetTop = this.thumbOffset.top;
							_loc_3.offsetBottom = this.thumbOffset.bottom;
						}
						//SettingsWindowUI.send("#####createScrollBar() addChild as DisplayObject", 1);
						this.addChild(_loc_1 as DisplayObject);
					}
				}
			} else if (this._scrollBarValue is Class) {
				_loc_1 = new(this._scrollBarValue as Class)() as IScrollBar;
				if (_loc_1 != null) {
					this._autoScrollBar = true;
					(_loc_1 as Object).offsetTop = this.thumbOffset.top;
					(_loc_1 as Object).offsetBottom = this.thumbOffset.bottom;
					this.addChild(_loc_1 as DisplayObject);
				}
			} else {
				_loc_1 = this._scrollBarValue as IScrollBar;
			}
			this._scrollBar = _loc_1;
			invalidateSize();
			if (this._scrollBar == null) {
				return;
			}
			this._scrollBar.addEventListener(Event.SCROLL, this.handleScroll, false, 0, true);
			this._scrollBar.addEventListener(Event.CHANGE, this.handleScroll, false, 0, true);
			this._scrollBar.focusTarget = this;
			this._scrollBar.tabEnabled = false;
			return;
		} // end function

		protected function handleScroll(event: Event): void {
			this.scrollPosition = this._scrollBar.position;
			return;
		} // end function

		public function get scrollPosition(): Number {
			return this._scrollPosition;
		} // end function

		public function set scrollPosition(param1: Number): void {
			//SettingsWindowUI.send("scrollPosition set " + param1, 1);
			param1 = Math.max(0, Math.min(this.maxScroll, Math.round(param1)));
			if (this._scrollPosition == param1) {
				return;
			}
			this._scrollPosition = param1;
			invalidate(SCROLL_UPDATE_INV);
			//SettingsWindowUI.send("scrollPosition set _scrollPosition=" + param1, 1);
			return;
		} // end function

		public function get maxScroll(): Number {
			return Math.ceil((this.getContentHeight() - _height) / this._scrollStepFactor);
		} // end function

		protected function getContentHeight(): Number {
			//SettingsWindowUI.send("getContentHeight", 1);
			if (this._target) {
				//SettingsWindowUI.send("getContentHeight ret" + this._target.height, 1);
				return this._target.height;
			}
			//SettingsWindowUI.send("getContentHeight returning def0", 1);
			return 0;
		} // end function

		public function get scrollStepFactor(): Number {
			return this._scrollStepFactor;
		} // end function

		public function set scrollStepFactor(param1: Number): void {
			this._scrollStepFactor = param1;
			invalidate(SCROLL_UPDATE_INV);
			return;
		} // end function

		override protected function onDispose(): void {
			var _loc_1: * = null;
			super.onDispose();
			this.thumbOffset = null;
			if (this._scrollBar) {
				_loc_1 = this._scrollBar as DisplayObject;
				if (_loc_1.parent) {
					_loc_1.parent.removeChild(_loc_1);
				}
				this._scrollBar.removeEventListener(Event.SCROLL, this.handleScroll);
				this._scrollBar.removeEventListener(Event.CHANGE, this.handleScroll);
				this._scrollBar = null;
			}
			this._scrollBarValue = null;
			this.maskObject = null;
			if (this.background) {
				this.background.removeEventListener(MouseEvent.MOUSE_WHEEL, this.targetMouseWheelHandler);
				this.background = null;
			}
			this.removeSource();
			if (this._target is IDisposable) {
				IDisposable(this._target).dispose();
			}
			this._target = null;
			return;
		} // end function

	}
}