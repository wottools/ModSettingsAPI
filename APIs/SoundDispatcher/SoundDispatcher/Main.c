#include <windows.h>
#include <windef.h>
#include <stdio.h>
#include <stdlib.h>
#include <mmsystem.h>
#include <tchar.h>  
#include <stdbool.h>

wchar_t* filename		= NULL;
int	volume				= 100;

char* usage =
"Usage: SoundDispatcher.exe [OPTION...]\n"\
"-v				print version\n"\
"-h, -help			print this message\n"\
"-f [PATH], -file [PATH]		path to .wav file\n"\
"-vol [VOL], -volume [VOL]	target volume (0-100)\n";


void printUsage()
{
	printf("%s",usage);
}

void printVersion()
{
	printf("1.0.0");
}

bool validateInput()
{
	if (filename == NULL)
	{
		printf("no file specified.\n");
		return false;
	}
	if (_waccess(filename, 0) == -1)
	{
		printf("file not found.\n");
		return false;
	}
	if (volume <0 || volume > 100)
	{
		printf("invalid volume set.\n");
		return false;
	}
	return true;
}


void play()
{
	int targetval = 65535;
	if (volume != 100)
	{
		targetval = (int)((volume / 100.0) * 65535);
	}
	

	//credits to http://www.codeproject.com/Articles/4754/mixerSetControlDetails
	printf("creating mixer,volume = %d, targetval = %d\n",volume,targetval);

	/* obtain handle to mixer device */
	MMRESULT result;
	HMIXER hMixer;
	result = mixerOpen(&hMixer, MIXER_OBJECTF_MIXER, 0, 0, 0);

	/* get speaker line of the mixer device */
	MIXERLINE ml = { 0 };
	ml.cbStruct = sizeof(MIXERLINE);
	ml.dwComponentType = MIXERLINE_COMPONENTTYPE_DST_SPEAKERS;
	result = mixerGetLineInfo((HMIXEROBJ)hMixer,&ml, MIXER_GETLINEINFOF_COMPONENTTYPE);

	/* get colume control of the speaker line */
	MIXERLINECONTROLS mlc = { 0 };
	MIXERCONTROL mc = { 0 };
	mlc.cbStruct = sizeof(MIXERLINECONTROLS);
	mlc.dwLineID = ml.dwLineID;
	mlc.dwControlType = MIXERCONTROL_CONTROLTYPE_VOLUME;
	mlc.cControls = 1;
	mlc.pamxctrl = &mc;
	mlc.cbmxctrl = sizeof(MIXERCONTROL);
	result = mixerGetLineControls((HMIXEROBJ)hMixer, &mlc, MIXER_GETLINECONTROLSF_ONEBYTYPE);

	/* set the volume level */
	MIXERCONTROLDETAILS mcd = { 0 };
	MIXERCONTROLDETAILS_UNSIGNED mcdu = { 0 };
	mcdu.dwValue = targetval; // the volume is a number between 0 and 65535
	mcd.cbStruct = sizeof(MIXERCONTROLDETAILS);
	mcd.hwndOwner = 0;
	mcd.dwControlID = mc.dwControlID;
	mcd.paDetails = &mcdu;
	mcd.cbDetails = sizeof(MIXERCONTROLDETAILS_UNSIGNED);
	mcd.cChannels = 1;
	result = mixerSetControlDetails((HMIXEROBJ)hMixer, &mcd, MIXER_SETCONTROLDETAILSF_VALUE);



	PlaySound(filename, NULL, SND_FILENAME);
}

int wmain(int argc, wchar_t* argv[])
{
	if (argc == 1)
	{
		printUsage();
		exit(1);
	}

	for (int i = 1; i < argc; i++)
	{
		if (!wcscmp(argv[i], _T("-f")) || !wcscmp(argv[i], _T("-file")))
		{
			filename = argv[++i];
		}
		else if (!wcscmp(argv[i], _T("-vol")) || !wcscmp(argv[i], _T("-volume")))
		{
			volume = 5;
			++i;
		}
		else if (!wcscmp(argv[i], _T("-h")) || !wcscmp(argv[i], _T("-help")) || !wcscmp(argv[i], _T("--h")) || !wcscmp(argv[i], _T("--help")))
		{
			printUsage();
			exit(0);
		}
		else if (!wcscmp(argv[i], _T("-v")) || !wcscmp(argv[i], _T("--v")))
		{
			printVersion();
			exit(0);
		}
		else
		{
			printf("invalid argument %s.\n", argv[i]);
			exit(1);
		}
	}
	if (validateInput())
	{
		play();
	}
	else
	{
		exit(1);
	}
}

