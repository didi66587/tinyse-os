

   TITLE:  DosLynx version 0.44 Beta Release Information


		DOSLYNX VERSION 0.44 BETA RELEASE INFORMATION


Contents:


   * Introduction
   * System Requirements
   * Obtaining DosLynx
   * Supplied Files
   * Installing DosLynx
   * Configuring DosLynx
   * Environment Settings
   * Code Page 850 Cook Book
   * Command Line Options
   * Using DosLynx
   * Special Notes on Usage
   * New DosLynx Features
   * Removed DosLynx Features
   * Distributing DosLynx
   * Credits


Introduction

   This is a beta release of DosLynx for DOS compatible computers written
   by Garrett Arch Blythe for the University of Kansas. Wayne S. Buttles
   made some modifications to it in 1996. The present maintainer of DosLynx
   is Fred C. Macall.

   DosLynx is a hypertext browser with World Wide Web capabilities. It is
   now offered in both 16-bit and 32-bit Protected Mode variations or
   versions, as well as in its traditional Real Mode version.

   This file provides information about installing, configuring, and using
   all three DosLynx v0.44b variations or versions.

   DosLynx is copyrighted by the University of Kansas and is free for
   instructional and research educational use. Non-educational use will be
   licensed at a later date.

   DosLynx v0.44b is available in EXEcutable form.


System Requirements

   One of DosLynx's goals is to provide support for as many DOS users as
   possible. We have scaled DosLynx towards this end.

   The known system requirements, for the Real Mode version, are:


   CPU
	  8086/8088 compatible.
   Memory
	  512 kilobytes free, or more, recommended.
   DOS
	  Version 3.0 or later, required.
   Hard Drive
	  Two megabytes free, or more, recommended.
   Monitor
	  Monochrome, Black and White, and Color supported.
   Graphics capability
	  Optional.
   Mouse
	  Optional.
   Network
	  None, or Class 1 (Ethernet) Packet Driver connected to a TCP/IP
	  network. You may, of course, emulate a Class 1 Packet Driver if
	  you have the required software for your particular system (i.e.:
	  PPP, ODI, SLIP, etc).


   The Protected Mode versions have some additional requirements, as
   follows:

   CPU
	  80286 or later, for the 16-bit Protected Mode version.
	  80386 or later, for the 32-bit Protected Mode version.
   Memory
	  4 MB or more, for the 16-bit Protected Mode version.
	  6 MB or more, for the 32-bit Protected Mode version. (It should
	  run, with reduced memory available for data, on a 4 MB PC.)
   DOS
	  Any version that can be fitted with a DOS Protected Mode
	  Interface (DPMI) service. The document: DPMIREVU.HTM, included in
	  the DosLynx Protected Mode Add-On Package, provides more
	  information on DPMI serving software that has been tested with
	  DosLynx.


Obtaining DosLynx

   DosLynx v0.44b is available via the World Wide Web at:
   http://macall.net/dlx44bin.zip , for the Traditional Real Mode Package.
   This Package is recommended for everyone.
   And, http://macall.net/dlx44bpm.zip , for the Protected Mode Add-On
   Package. The Add-On Package is recommended for those with systems that
   can provide DPMI service.

   DosLynx will be updated periodically as new changes are made to the
   application.


Supplied Files

   The DosLynx version 0.44 beta Traditional Real Mode Package has the
   following files shipped with it. If you do not have all of the files
   listed below we suggest obtaining a complete release from the Internet
   address listed above.


   BETAHYPE.TXT
	  An early note (pre)announcing a DosLynx beta, from
	  Garrett Arch Blythe.
   DEHEAD.EXE
	  A simple utility program for making headerless copies of local
	  files written by the DosLynx File|Open URL... (with its Download
	  button), File|Save Source, and Navigate|Download Selection menu
	  entries.
   DLXVIEW.BAT
	  A sample Batch File "wrapper" for a graphics viewer.
   DOSLYNX.BA_
	  A sample Batch File "wrapper" for DosLynx.
   DOSLYNX.CFG
	  A sample DosLynx v0.4xb configuration file.
   DOSLYNX.EXE
	  The DosLynx v0.44b Real Mode executable.
   ERROR.HTM
	  The default DosLynx HTML error page.
   FCMEMADR.GIF
	  A graphic containing Fred C. Macall's e-mail address.
   HISTORY.TXT
	  A report on the major changes made to bring DosLynx from
	  version 0.43b to version 0.44b.
   HOTLIST.HTM
	  The default DosLynx HTML Hotlist.
   INFO.HTM
	  The DosLynx v0.44b Quick Start Home Page.
   KEYS.TXT
	  A table of Short-Cut Keys for the DosLynx menus.
   NEWSURLS.HTM
	  A description of the News URLs accepted by DosLynx since
	  version 0.22 beta.
   README.HTM
	  The HTML equivalent of this file.
   README.TXT
	  The text equivalent of this file.
   TCPINFO.EXE
	  A simple utility program for reporting on your WATTCP.CFG or
	  DOSLYNX.CFG file(s). This report includes results for BOOTP or
	  (E)DHCP if/when they are specified in the configuration.


   The DosLynx version 0.44 beta Protected Mode Add-On Package includes the
   following (additional) files:


   CWSDPMI.DOC
	  Documentation for CWSDPMI.EXE.
   CWSDPMI.EXE
	  A 32-bit DPMI server that DosLynxS likes.
   DOSLYNXP.BA_
	  A sample Batch File "wrapper" for DosLynxP.
   DOSLYNXS.BA_
	  A sample Batch File "wrapper" for DosLynxS.
   DOSLYNXP.EXE
	  The DosLynx v0.44b 16-bit Protected Mode executable.
   DOSLYNXS.EXE
	  The DosLynx v0.44b 32-bit Protected Mode executable.
   DPMIREVU.HTM
	  A review of DPMI serving software that has been tested with
	  DosLynx.
   EMU387.DXE
	  A float arithmetic emulator, needed by DOSLYNXS.EXE on PCs that
	  lack a Numeric Processing Extension.
   GO32-V2.EXE
	  A tool for checking your 32-bit DPMI server setup.


Installing DosLynx

   This section assumes that you have not already installed DosLynx
   version 0.44 beta on your hard drive. If you already have, you may skip
   this section.

   Obtain a copy of the DosLynx Traditional Real Mode Package and place it
   in an appropriately named directory on your hard drive. We'll refer to
   this as your "DosLynx Directory". If your system can provide DPMI
   service, you also may obtain a copy of the DosLynx Protected Mode Add-On
   Package and place it in your DosLynx Directory, as well.

   C:\DOSINET>PKUNZIP DLX44BIN.ZIP
   from your DOS prompt in your DosLynx Directory.

   C:\DOSINET>PKUNZIP DLX44BPM.ZIP
   as well, if you have obtained DLX44BPM.ZIP.

   The supplied files should be written into your DosLynx directory. You
   may now remove the DLX44BIN.ZIP and DLX44BPM.ZIP file(s) from the
   directory, if you wish, by entering the command(s)
   C:\DOSINET>DEL DLX44BIN.ZIP
   and, if appropriate,
   C:\DOSINET>DEL DLX44BPM.ZIP

   DEHEAD requires little installation attention. However, if you choose
   not to include your DosLynx directory in your PATH environment, you may
   want to copy DEHEAD.EXE to a directory that is listed in your PATH. So
   you'll have it handy at all times.

   TCPINFO tries to read WATTCP.CFG or DOSLYNX.CFG from its own directory.
   So, it should be included in any directory(s), such as your DosLynx
   directory, where you have copy(s) of those .CFG file(s) for it to read.

   EMU387.DXE isn't needed and may be DEL(eted) if your PC has a Numeric
   Processing Extension or float arithmetic hardware. Otherwise, keep
   EMU387.DXE in the directory where you keep DOSLYNXS.EXE.


Configuring DosLynx

   If you want to use DosLynx for surfing the Web, you'll need an Ethernet
   Card and DOS Packet Driver software for it. Or, a dial-up modem and
   Ethernet Packet Driver emulating PPP software for it. If these things
   are new to you, consult tvdog's classic papers at the oldskool Web site.
   Most of tvdog's papers are actually provided from the oldskool ftp site.
   Beginning with version 0.25 beta, all of the problems the DosLynx ftp
   client previously experienced in accessing that site have been resolved.
   As long as the mss=1500 specification given in DOSLYNX.CFG is not
   changed.

   Fred's DOS Hardware How To expands on tvdog's discussion of the problem
   of finding a modern dial-up modem compatible with DOS software. And,
   Fred's DOS Internet Software How To provides links to two popular
   Ethernet Packet Driver emulating PPP software packages. Fred also has
   tips and links for PC dial-up modem and serial port configuration and
   checking.

   On the other hand, if you have high speed Internet service, you will
   need an Ethernet card for connecting with it. And, a DOS Packet Driver
   for that Ethernet card. If you are unable to find a DOS Packet Driver
   for your Ethernet card, a DOS ODI Driver (for NetWare) or a DOS NDIS or
   NDIS v2 Driver may save the day. Either of these may be "shimmed" to
   make a software "stack" that looks and behaves like a DOS Packet Driver.
   If you have a choice, you are likely to find the ODI Driver based
   approach preferable. The following two paragraphs sketch these two
   approaches.

   ODIPKT.COM, together with LSL.COM and a NET.CFG file, may be used to
   make an ODI Driver look like a DOS Packet Driver. (The ODI Driver,
   itself, is likely to be a .COM file.) These components may be specified
   in a .BAT file to be run when you are ready to use the resulting
   Packet Driver. Once your .BAT file has become "stable", you may add a
   CALL, to it, from your AUTOEXEC.BAT file, if you like. ODIPKT.COM v3.1
   is available from Dan Lanciani, in his ODIPKT.ZIP package. A suitable
   LSL.COM may be found, as LSL.CO_, in the DR-DOS v7.03 package. Diskette
   image files for installing DR-DOS v7.03 may be found by following
   link(s) from: http://www.drdos.net/download.htm . You use DISKCOPY.COM
   to copy such image file(s) onto diskette(s). Then, you use the DR-DOS
   PNUNPACK.EXE utility to unpack LSL.CO_ into LSL.COM. PNUNPACK.EXE is
   found in DR-DOS v7.03 DISK01.144. LSL.CO_ is found in DISK03.144.

   DIS_PKT.DOS, together with PROTMAN.DOS, PROTMAN.EXE, NETBIND.COM, and a
   PROTOCOL.INI file, may be used to make a DOS NDIS or NDIS v2 Driver look
   like a DOS Packet Driver. (The DOS NDIS or NDIS v2 Driver, itself, is
   likely to be a .DOS file. DOS NDIS Drivers are not to be confused with
   the NDIS v3, NDIS v4, and higher numbered NDIS Driver versions provided
   for Windows systems. The Windows NDIS Drivers are likely to be .SYS
   files.) PROTMAN.DOS, your DOS NDIS Driver, and DIS_PKT.DOS are
   specified, on DEVICE= . . . lines, in your CONFIG.SYS file. You place
   these .DOS files, together with NETBIND.COM, PROTMAN.EXE, and your
   PROTOCOL.INI file, in a directory specified on the CONFIG.SYS line for
   PROTMAN.DOS. You run NETBIND.COM when you are ready to use the
   Packet Driver that results from all this software. A NETBIND.COM call
   may be placed in your AUTOEXEC.BAT file, if you like. DIS_PKT.DOS v1.11
   is available from Dan Lanciani, in his DIS_PKT.ZIP package. Suitable
   PROTMAN.DOS and PROTMAN.EXE components may be found, as PROTMAN.DO_ and
   PROTMAN.EX_, in the "Microsoft Network Client 3.0" package. This package
   includes a suitable NETBIND.COM file, as well. This package was
   distributed widely in the \CLIENTS\MSCLIENT directory of the Microsoft
   Windows NT4-Server CD-ROM. You use EXPAND.EXE, also included in the
   package, to expand PROTMAN.DO_ and PROTMAN.EX_ into PROTMAN.DOS and
   PROTMAN.EXE. All of these files are found in the package's DSK3-1.EXE
   file.

   There are lots of Web sites with more information on these arrangements.
   You'll probably need to consult some of them in order to see how to
   prepare a suitable NET.CFG or PROTOCOL.INI file. Use searches like:
   +dos +lsl.com +odi +driver
   or
   +dos +protman.dos +ndis +driver
   to find them.

   If you want to use the DosLynx e-mail client, will your ISP require the
   use of SMTP AUTH LOGIN for relaying your e-mail? If so, you will need to
   provide base64 encoded versions of your e-mail ID and password. One
   method for performing the base64 encoding needed is explained in:
   http://macall.net/PMSMTP.TXT .
   Look for the section headed: Base64-Encoding. Everything PMSMTP.TXT says
   about configuring PMSMTP for SMTP AUTH LOGIN applies directly to
   DosLynx, with just two exceptions: The DosLynx configuration file is
   named DOSLYNX.CFG, rather than PMSMTP.CFG. And, base64 encoded password
   data to be given on the command line is prefixed with /S for DosLynx,
   while left unadorned for PMSMTP.

   PMSMTP.TXT's detailed procedure for base64 encoding is stated in terms
   of use of the Pegasus e-mail client. However, if you won't be using the
   Pegasus package for e-mail, you may find the DOS MPACK program a more
   convenient alternative. It is available in a small package from:
   http://www.ibiblio.org/pub/packages/ccic/software/dos/networking/mpack15
   d.zip
   or
   https://www.chebucto.ns.ca/software/dos/compression/mpack15d.zip .

   Once you have decided on your communications arrangement and determined
   the needed TCP/IP parameter(s), edit the DosLynx configuration file,
   named DOSLYNX.CFG, with any text editor. Work through each keyword and
   provide the appropriate value. Ample configuration instructions are
   included in the sample configuration file supplied. Once finished, save
   the modified file as ASCII text. The Real Mode and Protected Mode
   versions of DosLynx all share your DOSLYNX.CFG file. Comments indicate
   where a few configuration options are ignored by the Protected Mode
   versions. The rest of the options apply for all three DosLynx versions.
   A
   TCPINFO DLX ALL
   command may be used to get a more-or-less comment-free view of your
   DOSLYNX.CFG file.

   If you wish to save your Hotlist, which you've used with an old version
   of DosLynx, make sure you don't overlay it with the new one from the
   release package. The easiest thing to do is to rename it before
   installing a new DosLynx release. If necessary, simply change the
   hotlist= specification in the configuration file to point to your
   renamed Hotlist file.

   If you expect to be receiving at least an occasional graphic file,
   you'll want to tailor DLXVIEW.BAT to your situation. Whenever you
   receive or reference a .BMP, .GIF, .JPG, .PCX, .PNG, or .TIF file,
   DosLynx will call DLXVIEW.BAT with the full name of the graphic file.
   You specify the name of your graphics viewer and any parameter(s) it
   needs in DLXVIEW.BAT.

   If you have an 8088 based PC with a Hercules monochrome graphics
   adapter, you may have to dig deep to find a viewer that can display
   .JPGs. Two that work fairly well (though, slowly on older machines) are:
   DMGIF v1.2 and 2SHOW v2.04. These are both shareware viewers.

   If you have a '286 based, '386 based, or more recent PC and/or a CGA,
   EGA, VGA, or more recent video adapter, you'll find progressively more
   viewers to try out. One that works well for limited machines with at
   least a CGA adapter is LXPIC v7.3. LXPIC is a freeware viewer. The
   sample DLXVIEW.BAT file provided invokes LXPIC on a machine with an SVGA
   card. To minimize complication(s) when using the DosLynx Protected Mode
   versions, you'll do well to avoid viewers that (also) use
   Protected Mode. LXPIC is a good choice from this standpoint, too.
   However, it should be possible to use a Protected Mode viewer with a
   register size matching the DosLynx Protected Mode version's register
   size. Or, vice versa. That is, if your favorite viewer is a 32-bit
   Protected Mode program, use only the DosLynx Real Mode or 32-bit
   Protected Mode versions with it, to maintain compatibility. Once you
   have your DLXVIEW.BAT working well, you'll probably want to put a copy
   of it in a directory listed in your PATH environment variable.

   It turns-out that there is a way to use a viewer like LXPIC on an 8088
   based system with only a Hercules monochrome graphics adapter! To do
   that, you'll need Hercules based Color Graphics Adapter Emulation
   software. One Emulator that works well, with LXPIC on an 8088 based PC,
   is HGCIBM v2.02. This is a shareware package. The LXPIC/HGCIBM
   combination delivers image quality comparable to 2SHOW v2.04's. But, it
   requires only about half as long to prepare each image! Use LXPIC's /R5
   command line option, in your DLXVIEW.BAT file, to adapt LXPIC to the
   emulated CGA display's pixel aspect ratio. To maintain the Hercules
   adapter's excellent text quality between image displays, you also may
   want to keep HGCIBM resident but disabled most of the time. In that
   case, add a command enabling HGCIBM, to the beginning of your
   DLXVIEW.BAT file. Then, end it with a command disabling HGCIBM, again.

   Of the three viewers discussed here, only 2SHOW v2.04 is able to display
   .PNG files. So, you may be tempted to use it together with, say, LXPIC.
   Unfortunately, 2SHOW v2.04 may be hard to use together with another
   viewer. Because, display timing differences between your two viewers may
   require you to continually readjust your monitor for stability, with
   each viewer. If this isn't an issue with your monitor, you might extend
   your DLXVIEW.BAT file to select among your viewers. On the basis of
   whether a .PNG file is to be displayed, or not.


Environment Settings

   DosLynx refers to several DOS Environment variables to augment its
   configuration information. You manage these by means of the DOS SET
   command.

   C:\DOSINET>SET
   will display all of your specified Environment variable settings, if
   any. Once you've decided how you want to specify these variables, you
   may add SET commands for them to your AUTOEXEC.BAT file. For example:

   SET TMP=C:\WIN95\TEMP
   SET TZ=EST5EDT

   DosLynx refers to the following DOS Environment variables:


   387
	  DosLynxS may probe your PC for a Numeric Processing Extension
	  (NPX) or float arithmetic unit, upon attempting to fetch an https
	  (or, SSL) URL. Apparently, this may be problematic on a few PCs
	  lacking an NPX. You may SET 387=N to declare that your PC has no
	  NPX and prevent that probing. In this case, a copy of EMU387.DXE
	  should be located in the same directory as DOSLYNXS.EXE. Or, the
	  EMU387 Environment variable should be SET to specify the full
	  path to EMU387.DXE. 387 is ignored by the DosLynx 16-bit
	  versions. If 387=N isn't specified, DosLynxS may probe for an NPX
	  as described above.

   COMSPEC
	  DosLynx refers to COMSPEC when it needs to know the full PATH and
	  name for your shell or command interpreter. This is needed when
	  "shelling out to DOS" and when invoking DLXVIEW to display a
	  graphics file. COMSPEC may be altered by means of a SET command,
	  as explained above. However, it usually gets set as a side effect
	  of a SHELL= line in your CONFIG.SYS file. If COMSPEC is
	  unspecified, DosLynx will use: command.com .

   EMU387
	  DosLynxS may look for EMU387.DXE, when it attempts to fetch an
	  https (or, SSL) URL, if it determines that your PC lacks an NPX
	  or float arithmetic unit. EMU387 may be set with the full path to
	  EMU387.DXE, to specify its location. Otherwise, if EMU387 isn't
	  set, DosLynxS looks for EMU387.DXE in the same directory as
	  DOSLYNXS.EXE. EMU387 is ignored by the DosLynx 16-bit versions.

   HOME
	  DosLynx refers to HOME when accessing documents or files via ftp.
	  HOME may be used to specify the first directory in DOS PATH(s)
	  that provide local mirror(s), on your system, for other ftp
	  sites. The DOS PATH(s) developed are as follows:

	  home/WWW/ftp/host/path

	  Where: home is the value of the HOME Environment variable, and
	  ftp, host, and path come from the ftp://host/path URL being
	  accessed. These DOS PATHs get delivered to DOS Interrupt 0x21
	  functions 0x4300 (Get File Attributes) and 0x3D (Open File with
	  Handle) calls. In at least some versions of DOS, these functions
	  don't mind treating those (forward) slashes the same as back
	  slashes.

	  If HOME is unspecified, DosLynx will use /tmp for the home
	  portion of the DOS PATHs shown above. ftp:// . . . URLs will get
	  accessed via TCP/IP, as expected, if any part(s) of their DOS
	  PATHs, developed as shown above, are missing on your system.

   TMP
	  DosLynx refers to TMP when developing temporary file names. It
	  attempts to develop names that don't duplicate any of the file
	  name(s) already present in the directory given by TMP. Though it
	  seems to duplicate the tempdir= configuration file option, you
	  normally assign the complete path and name of your temporary
	  directory, without a trailing back slash, to TMP. An example is
	  given above, near the beginning of this section.

   TZ
	  DosLynx refers to TZ to determine the time zone offset field it
	  adds to the end of the Date: . . . header line on each e-mail
	  that you send. Beginning with DosLynx v0.27b, the TZ Environment
	  variable is expected to have an EST5EDT style value. More
	  generally, this will be a value of the form: tzn[+/-]h[h][dtn]

	  Where:

	  tzn is a three character abbreviation for your Time Zone's Name.

	  h or hh is the difference between Greenwich Mean Time and your
	  time zone's standard time, in Hours. This value is negative for
	  time zones east of Greenwich.

	  dtn is an optional three character abbreviation for your Daylight
	  saving Time zone Name. Specify this part only if your time zone
	  makes a one hour shift, for the summer, on a schedule matching
	  that used in the United States, before 2007. On this schedule,
	  clocks were advanced an hour on the morning of the first Sunday
	  of April, each year. And, they were set back an hour on the
	  morning of the last Sunday of October, each year. If dtn is
	  present, DosLynx will adjust the time zone offset field it
	  develops, accordingly, while daylight saving time is in effect.
	  If you have a daylight saving time shift that doesn't match the
	  old U.S. schedule, you'll have to leave dtn out of your TZ value.
	  Then, you'll have to adjust your SET TZ= command twice a year,
	  when you change your local time. For example: If you used to use
	  SET TZ=EST5EDT, in the U.S.: You'll now use SET TZ=EDT4 in the
	  spring and summer and SET TZ=EST5 in the fall and winter.

	  If TZ is left unspecified, the time zone offset field will be
	  developed as if TZ=EST5EDT were specified.

   USER
	  DosLynx may refer to USER when accessing an ftp:// . . . URL that
	  doesn't include a userid field. That is, when accessing a simple
	  ftp://host/path style URL. In this case, if the ftp host requests
	  a user id, DosLynx will respond with a USER anonymous command.
	  And, if the ftp host requests a password, DosLynx will respond
	  with a PASS user@ command. Where, user is the value of the USER
	  Environment variable. If USER isn't specified, PASS WWWuser@ will
	  be sent.

   WWW_access_GATEWAY
	  DosLynx may refer to WWW_access_GATEWAY when accessing an access
	  type URL. Where, access may be file, ftp, http, or news. For ftp
	  and http type URLs, this only occurs if no matching proxy server
	  is configured in DOSLYNX.CFG. (So, any ftp_proxy= and/or
	  http_proxy= configuration option specified overrides any
	  WWW_ftp_GATEWAY and/or WWW_http_GATEWAY Environment
	  specification.) WWW_access_GATEWAY may be set to specify a proxy
	  server in the same way that DOSLYNX.CFG's ftp_proxy= and
	  http_proxy= configuration options do. If WWW_access_GATEWAY is
	  found unspecified for the access type of the URL in process, the
	  URL is accessed without using a proxy server.

   The DosLynx 32-bit Protected Mode version's DJGPP/GNU run-time package
   may refer to the following additional DOS Environment variables: DJGPP,
   FNCASE, LFN, and TMPDIR. However, DosLynx doesn't intend any use for
   those, presently. If you set any of them, you might get unexpected
   results, in one area or other. If you do get unexpected results, you
   might check to see if any of those variables are defined in your
   Environment.


Code Page 850 Cook Book

   Beginning with version 0.33b, DosLynx provides complete support for the
   ISO-8859-1 (8-bit) character set. ISO-8859-1 adds 96 displayable
   characters to the ASCII (7-bit) set and is said to be the base or
   default character set for HTML. The complete ISO-8859-1 support now in
   DosLynx includes recognition of the standard "entity names" for all of
   those added characters. Beginning with version 0.35b, DosLynx also
   provides limited support for UTF-8 document encoding. As of
   version 0.38b, DosLynx supports all of the UTF-8 characters and
   character sequences corresponding to the ISO-8859-1 character set,
   together with thirty two additional characters that aren't included in
   ISO-8859-1.

   In order for you to be able to see all of the ISO-8859-1 characters
   properly, your DOS system will have to be using display Code Page 850.
   Unfortunately, for users in most english speaking countries, your DOS
   default or hardware display Code Page probably will be 437. You can
   check your system by entering a CHCP command. If Code Page 850 isn't the
   default for your system, you will need to install the support for it
   included in DOS. Fortunately, in that case, Code Page 850 will be the
   "alternate" for your system's country or language. That means that you
   may install it, for your display and/or printer, without changing or
   adding anything else to your system's country or language settings. Rest
   assured that the rendering won't be any worse than it was with early
   DosLynx versions, if you choose not to install Code Page 850 support on
   your system.

   To install display Code Page 850, you will need an EGA, Hercules Plus,
   or better display adapter, and the DOS files DISPLAY.SYS and EGA.CPI.
   (There may not be any way to provide Code Page 850 support with MDA,
   Hercules, and CGA display adapters.) First, you'll need to add
   DISPLAY.SYS to your CONFIG.SYS file, with a line like the following:

   DEVICE=C:\DOSDIR\DISPLAY.SYS CON=(EGA,437,1)

   You use EGA in that line for any EGA or better display adapter. Use your
   system's actual path to DISPLAY.SYS and default Code Page number, if
   they aren't C:\DOSDIR\ and 437. You may need Hercules provided software
   for doing this with the Hercules Plus, and later, line of display
   adapters.

   Once you have DISPLAY.SYS installed, you will be able to issue the
   following three MODE commands:

   MODE CON CODEPAGE PREPARE=((850)C:\DOSDIR\EGA.CPI)
   MODE CON CODEPAGE SELECT=850
   MODE [CON [CODEPAGE]]

   Of course, these commands may be added to your AUTOEXEC.BAT file, once
   you get comfortable with them. The MODE . . . PREPARE= command provides
   the setup needed for loading the Code Page 850 support. Again, the
   C:\DOSDIR\ part in that may need adjustment for your system. The
   MODE . . . SELECT= command actually loads it into your display adapter.
   (This command may be modified in the obvious way and reissued to restore
   the default Code Page number mentioned in the DEVICE= . . . DISPLAY.SYS
   line.) This treatment may not change your CHCP command's result. So, use
   a MODE CON CODEPAGE, MODE CON, or even a bare MODE command, to check
   your display's setup, once you have DISPLAY.SYS installed.

   If your printer is an IBM LaserPrinter, Proprinter, Quietwriter, or
   compatible, its setup for Code Page 850 resembles that described above
   for the display. You'll need to install PRINTER.SYS in CONFIG.SYS and
   MODE . . . PREPARE= the appropriate one of DOS's nnnn.CPI files. You use
   PRN or LPTn, as appropriate, in place of CON in the commands shown
   above. Also, substitute the printer's four digit type number for EGA in
   those commands. Otherwise, consult your printer's documentation for the
   arrangements it uses for supporting Code Page 850.


Command Line Options

   DosLynx has the following command line switches and options. Most of the
   command line options override an equivalent configuration file option
   named, in each case, below. All command line options are case
   insensitive except for base64 encoded e-mail password data and some
   portion(s) of some URLs.


   /B
	  This switch will hide the clock, socket activity, free temporary
	  disk space, and free heap memory space numbers and the Messages
	  window for the duration of the current DosLynx session. This
	  option was added to provide a way to keep the screen uncluttered
	  for blind users, as those changing numbers and messages cause
	  some problems with screen readers. Other users may appreciate the
	  uncluttered screen, too.

   /U
	  This switch will hide the clock, free temporary disk space, and
	  free heap memory space numbers for the duration of the current
	  DosLynx session. As it doesn't do away with the socket activity
	  number and the Messages window, /U operation seems much closer to
	  normal operation than to /B operation. One reason for using the
	  /U switch might be to avoid the sluggish performance that may
	  result from having to use DosLynx with its temporary directory
	  located on a drive with removable media. A drive such as a
	  diskette or Zip drive. These drives may be slow to respond to the
	  repeated getdfree( ) calls that DosLynx makes. DosLynx uses these
	  calls to maintain the free temporary disk space number at the
	  bottom of the display. That slowness is what may make DosLynx
	  sluggish. Both /B and /U let DosLynx skip its getdfree( ) calls
	  and avoid that sluggishness.

   /P
	  This is the most important command line option. If you will be
	  executing DosLynx from a directory other than the one you
	  installed it in, you must use the /P option. /P specifies the
	  directory in which DosLynx will find its configuration file
	  DOSLYNX.CFG and the errorhtml file ERROR.HTM. If you installed
	  DosLynx in the directory C:\DLX, then you should use the /P
	  option as follows:

   C:\DOSINET>doslynx /PC:\DLX

	  To avoid having to retype the /P option every time you use
	  DosLynx, create a DOS batch file specifying the /P option and
	  place the batch file in a directory specified in your DOS PATH
	  environment variable. The supplied DOSLYNX.BA_ file provides an
	  example of this technique. You may: COPY it into a directory on
	  your PATH. RENAME it DOSLYNX.BAT. And, edit it for your
	  situation. Once you have the /P option being specified routinely,
	  you will be free to start DosLynx from any directory where you
	  want to access or save files. That will greatly simplify your
	  interactions with the local file dialogs.

   /S
	  This option was added to DosLynx in version 0.31 beta. It may be
	  used to specify your base64 encoded e-mail password, for the
	  e-mail client's use in performing SMTP AUTH LOGIN authentication.
	  It overrides or replaces the b64passw= configuration file option.
	  Specifying this secret on the command line allows it to be kept
	  separate from your DOSLYNX.CFG file in your system. Note that
	  your base64 encoded e-mail password is not to be enclosed in
	  quotes when given in the /S command line option. Here is a sample
	  /S command line option specification:

   C:\DOSINET>doslynx /SY29kZmljaGU=

	  To avoid having to retype the /S option every time you use
	  DosLynx, you may want to add it to the DOSLYNX command in your
	  DOSLYNX.BAT file. Of course, a danger in doing this is that your
	  base64 encoded e-mail password might then be exposed to anyone in
	  a position to study your DOSLYNX.BAT file. The supplied
	  DOSLYNX.BA_ file now includes an example of this technique. Note
	  that an at sign also has been added to the beginning of the
	  DOSLYNX command, in DOSLYNX.BA_. That keeps the DOSLYNX command,
	  with your base64 encoded e-mail password, from being displayed
	  while DosLynx is loading.

   /T
	  This option specifies the temporary directory where DosLynx will
	  create its temporary files, overriding the tempdir= configuration
	  file option. Note that this path should end with a back slash. If
	  you decide to use the directory C:\TEMP as the place to store
	  temporary files, then you may use /T in the following manner:

   C:\DOSINET>doslynx /TC:\TEMP\

   /V
	  This option tells DosLynx what text mode to begin in, overriding
	  the textmode= configuration file option. /VLOW tells DosLynx to
	  use the 25 row text mode. /VHIGH tells DosLynx to attempt to use
	  the 43 or 50 row text modes available to EGA and VGA compatible
	  video adapters. This setting also may be changed from within
	  DosLynx, after you have started it.

   /H
	  This option tells DosLynx if it should load the home page you
	  specified in the configuration file. It overrides the loadhome=
	  configuration file option. /HON tells DosLynx to load the home
	  page on startup. /HOFF tells DosLynx not to load the home page on
	  startup. /HOFF is forced if you also specify a URL on the command
	  line.

   /L
	  This option tells DosLynx how many loaded documents to keep in
	  memory before it starts releasing the oldest unviewed file. This
	  overrides the loaded= configuration file option. If decide you
	  want DosLynx to keep the last 5 ready in memory, then you may use
	  the /L option in the following way:

   C:\DOSINET>doslynx /L5

   /N
	  This option tells DosLynx if it should attempt network access. It
	  overrides the networked= configuration file option. To turn off
	  network access, use /NNO. To allow network access, use /NYES.
	  When viewing local files "offline" without a network connection
	  established, specify /NNO to forestall most networking error
	  messages and timeout delays.

   URL
	  This command line option is actually a URL that you would like
	  DosLynx to load from the command line. It can be any valid URL
	  that will fit within the 128 character DOS command line length
	  limit. As long as it doesn't contain any special character(s)
	  that have special meanings within DOS commands. Or, it can be a
	  DOS path to a file. Or, simply, a filename within the current
	  directory.

	  If you have a URL that is too long to be specified on the DosLynx
	  command line or contains troublesome character(s), you need to
	  take an indirect approach. You might enter your difficultURL as
	  an anchor, into a short and otherwise empty somename.HTM file.
	  That is, prefix your difficultURL with <A HREF=" . And, suffix it
	  with ">visiblelinktext</A> . So that your somename.HTM file
	  contains:

   <A HREF="difficultURL">visiblelinktext</A>

	  Then, when you specify somename.HTM on the DosLynx command line,
	  you will be provided with your visiblelinktext as a link to the
	  difficultURL. There is no need for <HTML>, <HEAD>, nor any of the
	  other trappings of a complete HTML file, within your somename.HTM
	  file.

	  When a path or URL is specified on the command line, your home
	  page will not be loaded unless you specify its path or URL, too.
	  To have DosLynx load this document (readme.htm) on startup,
	  execute one of the following commands from the directory in which
	  you installed DosLynx:

   C:\DOSINET>doslynx readme.htm

   C:\DOSINET>doslynx file:///readme.htm


Using DosLynx

   DosLynx is a straightforward menu driven application.

   A user has several ways to activate the DosLynx menus; pressing F10,
   pressing Alt plus one of the highlighted menu letters, and by a single
   left button mouse click.

   Following are a listing of all menu entries or commands and their
   functionality. Short-Cut keys are designated for many of the commands,
   including all of the commands in the File and Navigate menus. These are
   listed along the right side of each menu. The KEYS.TXT document included
   in the DosLynx Real Mode Package also provides a list of the Short-Cut
   keys. In the following headings, menu titles and menu entries are
   presented side by side, with the '|' character as a separator, and
   followed by any designated Short-Cut key(s), in parenthesis.


   File|Open URL... (F3)
	  Allows you to directly enter a URL. Once you've entered it,
	  "press" the Open or Download button. (These buttons were
	  introduced in DosLynx version 0.25 beta. Completing your entry
	  with the Enter key is equivalent to pressing the Open button
	  since it is the default button for this dialog. The Open button
	  replaces the OK button previously provided.) DosLynx will attempt
	  to load the specified URL.

	  If the Open button or equivalent is used and the specified
	  document is presentable (such as an HTML or text file), the
	  resulting view will be displayed in a new window. If the
	  specified document is un-presentable (such as an .EXE file) or an
	  image (such as a .BMP, .GIF, .JPG, .PCX, .PNG, or .TIF file),
	  DosLynx will prompt you for a local file name in which to save
	  it. After an image has been saved, DosLynx will swap most of
	  itself out of memory and invoke DLXVIEW to display it. After
	  viewing, use the means provided by your viewer to exit from its
	  display and return to DosLynx.

	  If the Download button is used, DosLynx will attempt to fetch the
	  specified document or file and un-conditionally prompt you for a
	  local file name in which to save it. This operation adds a header
	  or prefix to the local file copy made. It is equivalent to the
	  operation provided by the File|Save Source and
	  Navigate|Download Selection menu entries described below. As
	  described in the paragraph above, un-presentable files get saved
	  in transparent local file copies even when the Open button is
	  used. So, the Download button's main purpose is to avoid the
	  refetch that otherwise would be needed to obtain a local file
	  copy of a presentable document.

	  The File|Open URL... dialog's history contains the last few
	  URL(s) that you've entered. It also may contain URL(s) entered on
	  the DosLynx command line and, since DosLynx v0.29b, URL(s) pasted
	  over from the Navigate|Go To and Navigate|Show Destination URL
	  commands. Beginning with DosLynx v0.41b, URL(s) also may be
	  pasted over from the File|Clip View command. From within the
	  dialog, the down arrow key or mouse may be used to bring these
	  item(s) into view. The most recent (bottom) item will be given
	  "focus", to start. Any one of these history item(s) may then be
	  selected, for priming the dialog's input line. Once primed, the
	  input line may be used as is, or after editing.

	  No HTTP Referer: Header field is ever provided in request(s)
	  initiated by means of the File|Open URL... menu entry.

   File|Open Local... (Shift-F3)
	  Allows you to select a local file from an available DOS path.
	  DosLynx will convert the file name into a URL and attempt to load
	  the file. The specified file will be displayed in a new window or
	  displayed by DLXVIEW as described above for the File|Open URL...
	  menu entry's Open button. This dialog's history contains the last
	  few DOS path(s) that you've entered. It also may contain DOS
	  path(s) entered on the DosLynx command line. And, beginning with
	  DosLynx v0.41b, full paths to all saved local files. These
	  history item(s) may be accessed and used as described above for
	  the File|Open URL... menu entry.

   File|Close (Alt-F3)
	  This menu item directs DosLynx to close the currently active
	  window, so that it is no longer viewable on your display. (The
	  Messages window may be brought back after being closed, however.)
	  This command duplicates the Window|Close command. Closing a
	  window designates the memory allocated to it a candidate for
	  reuse. The Esc key provides a short-cut for closing the Messages
	  window.

   File|Save Rendering... (F2)
	  When selected, DosLynx will prompt you for a local file name in
	  which to save the document in the currently active window. Your
	  document will be exported as DOS Code Page 850 text. This enables
	  its use by other PC utilities that are unaware of ISO-8859-1 or
	  UTF-8 coding. However, as of version 0.44b, DosLynx still has no
	  way to import and correctly interpret such a file. If it contains
	  any non-ASCII character(s) or character entities. (That is,
	  characters or character entities with code values outside of the
	  ASCII range of 0 to 127 decimal.)

	  This menu entry may be used for saving documents containing MIME
	  or UU encoded data. However, it isn't likely to be useful for
	  saving documents containing yEncoded data. If your intent is to
	  save a document "transparently", or for further use with DosLynx,
	  you should use one of the three save source or download type
	  commands that DosLynx offers. These are File|Open URL... (with
	  its Download button) (above), File|Save Source (below), and
	  Navigate|Download Selection (further below).

   File|Print Rendering... (Alt-P)
	  When selected, DosLynx will prompt you for a DOS device to which
	  to print the rendering. The appropriate DOS device to enter is
	  the one to which your printer is connected, such as LPT1.

   File|Clip View (Alt-V)
	  Beginning with DosLynx v0.41b, this menu entry provides for
	  clipping or extracting URL(s) or other relatively short citations
	  from rendered document(s). You express each clipping's content by
	  means of a Turbo Vision TMemo (editor) dialog provided. This
	  dialog gets primed with a copy of the presently viewable document
	  screen's text.

	  Clipping(s) may be pasted into the File|Open URL... menu entry
	  dialog's history list, for use. Or, saved in a local (clip board)
	  file. In turn, saved clipping file(s) may be pasted into the
	  e-mail client's TMemo dialog. Or, into the HTML Form Textarea
	  input control's TMemo dialog. To facilitate these pastings, full
	  paths to saved local file(s) will get copied into the
	  File|Open Local... dialog's history list. URL(s) to be pasted may
	  flow over several lines, if necessary. However, they are limited
	  to a maximum length of 250 octets. Clippings to be saved are
	  limited to a maximum length of about 4000 octets.

	  The TMemo editor provides a text selection feature to facilitate
	  clipping away large text areas. This is explained near the end of
	  this section.

   File|Save Source (Alt-S)
	  DosLynx will attempt to refetch the document on display in the
	  currently active window and prompt you for a local file name in
	  which to save it. If an HTTP Referer: field was sent in the
	  request that obtained the document on display, that will be
	  repeated here. Unless HTTP Referer Mode has been turned OFF in
	  the meantime. The local file copy will be prefixed with a
	  <BASE HREF=" . . . "> HTML tag indicating where it came from.
	  This enables all of the document's links to be reproduced, in
	  full, when the local file copy of the document is displayed
	  later. Also, if the document is refetched via http or https, the
	  HTTP server provided "headers" sent ahead of the document will be
	  placed in the local file copy. Along with the
	  <BASE HREF=" . . . "> HTML tag introduced just above. They will
	  further document the file's remaining contents. The document,
	  itself, starts following the local file's first blank line. An
	  exception is made for the news:? URL. If that is the source of
	  the document on display, nothing is added to the beginning of the
	  local file copy made.

	  This menu entry may be used for saving documents containing
	  binary, MIME, UU, or yEncoded data in a transparent fashion. If a
	  "clean" copy of any document copied via this menu entry is
	  desired, the local file copy written by DosLynx may be recopied
	  with the DEHEAD utility provided. It will copy everything in a
	  file after its first blank line. As news:? documents are clean to
	  begin with, they won't need DEHEAD processing.

   File|Dos Shell (Ctrl-F10)
	  The DosLynx Real Mode version swaps most of itself out of memory
	  unless shoswap=NO is specified in your DOSLYNX.CFG file. The
	  DosLynx Protected Mode versions ignore the shoswap= option and
	  swap most of their Real Mode portion(s) out of DOS memory.
	  DosLynx (all versions) then spawns your command interpreter so
	  that you may take action, from a DOS prompt inside of DosLynx,
	  without having to exit. Most DOS commands and programs will be
	  accessible from this prompt. In particular, you may issue
	  driveletter: and CHDIR command(s) to change your current drive
	  and directory. So as to simplify use of the DosLynx local file
	  dialogs, which inherit these settings.

	  However, you must refrain from loading a TSR or using the Packet
	  Driver. (Though, you may be able to use the Packet Driver if
	  DosLynx hasn't used it, yet. Or, you may be able to use another
	  Packet Driver instance if you have already installed a Packet
	  Mux..) If DosLynx is configured to use EMS for overlays and/or
	  swapping, you also must avoid disrupting its EMS setup. (The
	  DosLynx Protected Mode versions don't use overlays nor the ems=
	  configuration option. Conceivably, they might use EMS for
	  swapping.)

	  Depending on limitation(s) of your DPMI service and how much
	  memory you have available, running Protected Mode application(s)
	  from within a DosLynx Protected Mode version may be tricky.
	  Generally, trouble is sure to come if you try to mix
	  Protected Mode programs with unmatched register sizes. Having
	  both 16-bit and 32-bit Protected Mode versions of DosLynx
	  available for use should help in avoiding many of these kinds of
	  problems.

	  After selecting this item, you should always EXIT the command
	  interpreter, to return to DosLynx, after you are finished. (If
	  shoswap=NO is specified in your DOSLYNX.CFG file and you are
	  using the DosLynx Real Mode version, a lack of sufficient free
	  memory may prevent you from successfully running the command(s)
	  you issue. An extreme lack of free memory may even prevent the
	  DosLynx Real Mode version from successfully spawning your command
	  interpreter.)

	  Beginning with version 0.24 beta, DosLynx itself may be safely
	  invoked from a DOS prompt inside of an already running instance
	  of DosLynx. Though, a limitation of your DPMI service and/or a
	  lack of sufficient XMS memory may prevent this with the DosLynx
	  Protected Mode versions. When DosLynx is invoked while
	  shelled-out from DosLynx, it won't remove any DosLynx temporary
	  file(s) it finds at the beginning of its run. And, it will issue
	  a reminder message to this effect. This usage may be of some
	  value for performing local operations, which might be prevented
	  by a lack of memory in the original DosLynx instance. However,
	  you won't have any additional access to the Packet Driver without
	  a Packet Mux. arrangement, as explained above. In the absence of
	  a good reason for running another instance of DosLynx, it will
	  always be better to return to your original DosLynx session by
	  EXIT(ing) the command interpreter.

   File|Exit (Alt-X)
	  This is the intended way for you to end your DosLynx session.

   Navigate|Find... (Alt-F4)
	  Allows you to enter a Search String that DosLynx will find in
	  your currently active window. Beginning with DosLynx
	  version 0.24 beta, this dialog provides both "Loose Find" and
	  "Exact Find" buttons. These initiate searches that use either
	  case-insensitive or exact matching.

   Navigate|Find Again (F4)
	  DosLynx will search for the next occurrence of the last
	  Search String entered to the find command. The search will
	  continue using loose or exact matching, as specified when the
	  last Search String was entered.

   Navigate|Next Anchor (J, 2, or Tab)
	  This will move an internal anchor cursor to the next selectable
	  anchor or Form control or object in the active window. If the
	  anchor is a reference or link containing a destination URL, or a
	  Form control or object that isn't hidden, it will be highlighted.
	  The highlight will go out if you move to an anchor that is only a
	  name or label or to a hidden Form control or object. This command
	  will only be active when the document on view, in the active
	  window, contains one or more anchor(s) or Form control(s) or
	  object(s).

   Navigate|Previous Anchor (K, 8, or Shift-Tab)
	  This will move an internal anchor cursor to the previous
	  selectable anchor or Form control or object in the active window.
	  If the anchor is a reference or link containing a destination
	  URL, or a Form control or object that isn't hidden, it will be
	  highlighted. The highlight will go out if you move to an anchor
	  that is only a name or label or to a hidden Form control or
	  object. This command will only be active when the document on
	  view, in the active window, contains one or more anchor(s) or
	  Form control(s) or object(s).

   Navigate|Reload Current (Alt-R)
	  This entry or command provides for refreshing the present view.
	  It is used to bypass the cache's operation when the present view
	  is found to be defective or stale and needs to be reloaded.
	  Beginning with DosLynx version 0.26b, caching improvements have
	  closed loopholes that allowed anchor following to provide a
	  refresh, in some cases. At the same time, this command's previous
	  deficiencies were resolved. If an HTTP Referer: field was sent in
	  the request that obtained the present view, that will be repeated
	  here. Unless HTTP Referer Mode has been turned off in the
	  meantime.

	  Your most frequent need for this command may come whenever a lack
	  of memory keeps the DosLynx Real Mode version from completing its
	  presentation of a new document. If you have followed a link, the
	  linked-from document will have been freed or removed from memory.
	  So, this command may then be able to reload the present document,
	  in its entirety. If the present document is from a local file
	  beginning with a <BASE HREF= . . . > HTML tag, an attempt will be
	  made to load it from its original source. That source is
	  indicated on the window's top line. The resulting view replaces
	  the present view in the cache and the currently active window.

   Navigate|Download Selection (Alt-D)
	  This is like File|Save Source except that the document to be
	  saved in a local file is named by the destination URL of the
	  currently selected anchor or Form Submit Button control. Use this
	  menu entry or command when you are about to link to a presentable
	  document you know you'll want to save. This will save you the
	  refetch that will be needed if you should first simply follow the
	  currently selected anchor. This command may be indispensable for
	  capturing the response to a Form's submission. Also, it is
	  recommended for saving documents, such as news: documents
	  containing yEncoded data, known in advance to require transparent
	  handling that they won't get by default. For URLs other than
	  news:?, the local file copy that DosLynx writes is prefixed with
	  a header that ends with a blank line. This is explained in more
	  detail, for the File|Save Source menu entry, above. If HTTP
	  Referer Mode is Enabled and ON, the URL of the document
	  containing the link being followed is sent in the HTTP request's
	  Referer: Header field.

	  This menu entry isn't the best for obtaining a clean local copy
	  of a file, such as an .EXE, that isn't presentable. Normally,
	  simply selecting and activating such a file's anchor will
	  accomplish that. However, this menu entry may be necessary to
	  force saving if the file's server mis-classifies it as
	  presentable. When this menu entry is used to override a server's
	  mis-classification, the saved object will begin with what is
	  likely to be an undesired added header. In any event, object(s)
	  already received by means of this menu entry may be cleaned or
	  rid of an undesired added header by use of the DEHEAD utility. It
	  will copy everything in a file after its first blank line.
	  Downloaded news:? files get written without a prefix and won't
	  need DEHEADing.

   Navigate|Activate Anchor (L, 6, or Enter)
	  This menu entry acts on the currently selected anchor or Form
	  control or object in one of several ways.

	  For anchors, causes DosLynx to attempt loading the
	  anchor-specified destination URL. URL loading is performed as
	  described above for the File|Open URL... menu entry's Open
	  button. Except that when the specified document is presentable,
	  its presentation replaces the present view in the currently
	  active window. Any Form content or data that has been entered
	  into the replaced view gets lost at this point. If HTTP Referer
	  Mode is Enabled and ON, the URL of the document containing the
	  link being followed is sent in the HTTP request's Referer: Header
	  field.

	  For Form password and text line input objects, invokes a line
	  input/editing dialog. This line input/editing dialog will be
	  provided with a Submit Button when the containing Form lacks a
	  Submit Button control. For Form textarea objects, invokes a TMemo
	  input/editing dialog. Beginning with DosLynx version 0.31 beta,
	  this dialog offers a Paste File push button. This button provides
	  for reading text file(s) into the TMemo object being composed.
	  For Form select input objects, invokes a list box input selection
	  dialog. For Form checkbox and radio button objects, causes
	  DosLynx to toggle the object's state, if possible. (Radio buttons
	  only respond when they're in the unpushed or unset state. When a
	  radio button does respond to activation, it replaces the already
	  pushed button, in the same group, that then gets popped back
	  out.) For Form submit and reset button controls, the labeled
	  action gets performed. That is, the Form's content or data gets
	  submitted or reset.

	  Form content or data submission is like URL loading in that a
	  document is expected in response. However, it differs with
	  respect to where the response document is presented and what
	  happens to any Form content or data that has been entered into
	  the current document. The document obtained in response to Form
	  content or data submission is loaded exactly as described above
	  for the File|Open URL... menu entry's Open button. That is, when
	  this document is presentable, it is presented in a new window.
	  This allows the Form content or data that has been entered into
	  the submitted document to be preserved in what becomes the
	  previously active window.

	  The Navigate|Activate Anchor command will not be active when the
	  document on display, in the currently active window, contains no
	  anchor(s) nor Form control(s). This will be the case for text
	  files and a few (usually short) HTML documents. (ERROR.HTM
	  provides an obvious example.) Also, it will not be active when
	  the currently selected anchor carries no destination URL. Or,
	  when the currently selected Form object is one that is "hidden".

   Navigate|Prior Document (H or 4)
	  This will cause DosLynx to attempt to return to the last visited
	  presentable URL, if any, in the currently active window. This
	  command will only be active when there are one or more Prior
	  Document(s) associated with the currently active window. In many
	  cases, the prior document may be available from the DosLynx
	  cache. If so, the document won't need to be refetched from its
	  original source. If the document does need to be refetched and if
	  an HTTP Referer: field was sent in the request that last obtained
	  it, that will be repeated here. Unless HTTP Referer Mode has been
	  turned OFF in the meantime.

   Navigate|Go To (Alt-G)
	  This command was added to DosLynx in version 0.29b. It provides
	  you with a list of the URL(s) that have been presented and are
	  still pending in the currently active window. You may select any
	  one of the listed URL(s) to be operated on by one of the dialog's
	  push buttons. The Go Back button takes the currently active
	  window back to the selected URL. As if the
	  Navigate|Prior Document command had been used as many times as
	  necessary to return to it. The Go Back button will save time when
	  there are intermediate view(s) that you don't care to revisit.
	  The Go Again button presents the selected URL in a new window.
	  Just as if it had been entered into the File|Open URL... menu
	  entry or command. The Paste button copies the selected URL into
	  the File|Open URL... dialog's history. From there, it may be
	  edited and/or presented in a new window or downloaded.

	  The Navigate|Go To command displays only the first 250 characters
	  of longer URLs. And, that length limit is enforced by the Paste
	  button's operation. However, the Go Back and Go Again buttons
	  operate on an unlimited internal copy of the selected URL. So,
	  they may be used without concern for the selected URL's length.

   Navigate|Search Index... (F7)
	  Some HTML documents provide interfaces for searchable indexes.
	  These documents contain the HTML <ISINDEX . . . > tag and are
	  known, somewhat imprecisely, as "searchable documents". To
	  request a search of the index associated with the currently
	  active window's present document, select this command. In turn,
	  you'll get a simple dialog for entering your search string. This
	  command will only be active if the currently active window's
	  present document provides an interface to a searchable index.

	  The Navigate|Search Index... command complements or contrasts
	  with the DosLynx Navigate|Find . . . commands. The Search
	  command's search is performed, by the document's server, upon an
	  index or database that it maintains. Meanwhile, the Find
	  commands' search is performed, by DosLynx itself, upon the loaded
	  document.

   Navigate|Show Destination URL (Alt-U)
	  This selection reports on the type of, and the destination URL
	  specified by, the currently selected anchor or Form control or
	  object. The first line of this command's report contains a brief
	  description of the selected object's type. In the case of a
	  document such as a text file that contains no selectable
	  object(s), Object Type:  none will be reported. In the case of an
	  anchor selection that has no destination URL, Object Type:  Label
	  will be reported. For Form controls which consist of or include a
	  Submit Button, the first line ends with an indication of whether
	  a GET or POST request will be used for Form submission.

	  The remainder of this command's report displays a destination
	  URL, a destination URL equivalent, or destination URL-like
	  internal data. For anchors or Hyperlinks, this is a destination
	  URL. For Form control objects which consist of or include Submit
	  Buttons, this is a URL equivalent composed of the Form's present
	  data content appended to the <FORM tag's ACTION= . . . URL. This
	  is the URL that will be transmitted if the Submit Button should
	  be activated. Except, for Submit Buttons using a POST request,
	  the indicated URL equivalent will be split, at its last question
	  mark character, into URL and data parts. For Form select input
	  controls, this is a destination URL-like representation of the
	  control's presently selected option. For other Form control
	  objects, this is a destination URL-like representation of the
	  control's initial data, if any.

	  Beginning with DosLynx version 0.29b, the
	  Navigate|Show Destination URL command's dialog will include a
	  Paste push button, whenever it has a URL or URL-like value to
	  report. This button copies up to 250 characters from the
	  beginning of the displayed URL into the File|Open URL... dialog's
	  history. From there, the pasted URL may be edited and/or
	  presented in a new window or downloaded. This dialog's other
	  button(s) simply provide a variety of ways for dismissing the
	  dialog.

   Options|Manage HTTP Cookie Mode
	  Beginning with DosLynx version 0.34b, this item provides a short
	  report or dialog pertaining to the status of HTTP Cookie Mode.
	  Most of this status comes from the cookiedir= and cookiemode=
	  configuration items. They are described by comments in the sample
	  DOSLYNX.CFG file provided. HTTP Cookie Mode pertains to whether
	  HTTP Cookie(s) are being accepted from received HTTP Set-Cookie:
	  Header fields. To whether they are also being sent back in HTTP
	  Cookie: Header fields, in DosLynx GET and POST requests. And, to
	  whether this receiving and sending is being audited by messages
	  to the Messages window. HTTP Cookie Mode also includes a
	  Monitoring state. In this state, received HTTP Set-Cookie: Header
	  fields are reported by messages to the Messages window. However,
	  the Cookie(s) these Header fields carry are then discarded
	  without being used to update a DosLynx Cookie(s) file. If HTTP
	  Cookie Mode Auditing is Enabled or HTTP Cookie Mode is Enabled,
	  this dialog also provides a Change Mode push button for stepping
	  through the two or three available ON/Monitoring/OFF states
	  configured. While HTTP Cookie Mode is Enabled and ON, Cookies
	  received in Set-Cookie: Header fields are used to update DosLynx
	  Cookie files. Appropriate unexpired Cookies selected from these
	  files are then sent back in Cookie: Header fields, in DosLynx GET
	  and POST requests. This dialog's OK button simply provides for
	  dismissing the dialog.

   Options|Manage HTTP Referer Mode
	  Beginning with DosLynx version 0.32b, this item provides a short
	  report or dialog pertaining to the status of HTTP Referer Mode.
	  Most of this status comes from the refmode= configuration item.
	  That is described by comments in the sample DOSLYNX.CFG file
	  provided. HTTP Referer Mode pertains to whether the HTTP Referer:
	  Header field is being sent in GET and POST requests. And, to
	  whether this sending is being audited by messages to the Messages
	  window. If HTTP Referer Mode is configured to be Enabled, this
	  dialog also provides a Change Mode push button for toggling its
	  ON/OFF status. While HTTP Referer Mode is Enabled and ON, the
	  Referer: field will be sent in request Headers, whenever a
	  Referer URL is available. This dialog's OK button simply provides
	  for dismissing the dialog.

   Options|Toggle Low/High Text Mode
	  Allows you to switch back and forth between the default 25 line
	  text mode and the 43 or 50 line text mode of EGA or VGA video
	  adapters. If there is no 43 or 50 line text mode available for
	  your video adapter, this command will leave your display
	  unchanged. This is the case with the Hercules video adapter.

   Options|Send Mail
	  Presents a dialog window for composing and sending a short e-mail
	  note. Beginning with DosLynx v0.27b, the Send Mail window's To:
	  line will accept a short list of comma separated e-mail
	  addresses. You are free to use leading or trailing space(s)
	  around your e-mail address(es) to improve the list's appearance.
	  However, you need to keep the entire line to a length of less
	  than 256 characters. The text of your note will have to be kept
	  to a length of less than 4096 characters.

	  Beginning with DosLynx v0.31b, the Send Mail dialog includes a
	  Paste File push button. This button may be used to specify short
	  text file(s) to be read into the note being composed. At the end
	  of each file read operation, invoked from the Send Mail dialog, a
	  simple Confirm dialog provides a pause for your review of the
	  Messages window. When you are ready, any of the usual responses
	  will take you back to the Send Mail dialog.

   Window|Messages (Alt-M)
	  This will cause the window containing all of the DosLynx messages
	  to become the currently active window.

   Window|Clone Window
	  Use this if you wish to create a duplicate of the currently
	  active document window and all of its views. The new window is
	  expected to be the same in every respect except for window number
	  and size. Any entered Form content or data present in the
	  currently active window's present view will be maintained and
	  should be faithfully copied into the new window's present view.

   Window|Zoom In/Out (F5)
	  Use this command to switch the active or selected window to its
	  maximum possible size. Or, to return it to its previous size,
	  before Zoom. The document presentation windows start out at
	  maximum size unless a Window|Cascade or Window|Tile command has
	  been used. So, they usually aren't Zoom(able). On the other hand,
	  the Messages window starts out minimized and is always
	  Zoom(able).

   Window|Resize (Alt-F5)
	  This command provides for adjusting the currently active window's
	  size and position.

   Window|Next (F6)
	  This command gives another window, from the list of open windows,
	  a turn at being the currently active window. If and when you get
	  disoriented while using DosLynx, the F6 key is handy for stepping
	  through and reviewing all your open window(s).

   Window|Cascade
	  Use this command to organize all open document presentation
	  windows in a cascading arrangement on your display.

   Window|Tile
	  Use this command to organize all open document presentation
	  windows in a tiled arrangement on your display.

   Window|Close (F3)
	  This command duplicates the File|Close command. It closes the
	  currently active window, making the memory allocated to that
	  window a candidate for reuse. Once closed, windows other than the
	  Messages window become unviewable. The Esc key provides a
	  short-cut for closing the Messages window.

   Hotlist|View... (F1)
	  This command causes DosLynx to load the configuration file
	  specified Hotlist file, for easy access to anchors you've saved.

   Hotlist|Add Current To Hotlist (Alt-A)
	  This command will add the URL of the currently active window to
	  your Hotlist file. In addition, it will prompt you for a name or
	  title by which to remember the URL. Once you've entered that name
	  or title, the Hotlist file will be updated.

   Hotlist|Add Link To Hotlist (Alt-T)
	  This command will add the destination URL specified by the
	  currently selected anchor to your Hotlist file. This provides a
	  way to make a long term copy of content or data that has been
	  entered into a Form being submitted. After you've completed the
	  name or title dialog for the new entry, the Hotlist file will be
	  updated. (You'll need to edit your Hotlist file with another
	  program to remove any of its entries.)

   Hotlist|Home Page (F9)
	  Use this command to open a new window loaded with the
	  configuration file specified home page.

   Help|About DosLynx
	  Provides DosLynx version and authors information. Reach this menu
	  entry by pulling-down another menu and then using arrow key(s) to
	  move to the Help menu.

   Help|Mail Developer
	  Use this command to send a suggestion or bug report to the
	  developer of DosLynx, if you are connected to a network. This
	  menu entry works just like Options|Send Mail, except that the To:
	  and Subject: lines are appropriately filled-in before you start.
	  You may edit these entries, if you like, even though they aren't
	  blank when you start. Reach this menu entry by pulling-down
	  another menu and then using arrow key(s) to move to the Help
	  menu.


   DosLynx also has many other ways of obtaining user input.

   Most available hotkey or Short-Cut key equivalents are listed beside the
   menu choices in the DosLynx menus.

   In addition to the keys listed in the menus, you can use several other
   keys for anchor navigation. These are: Tab and Shifted Tab, the UNIX vi
   keys (hjkl), your numeric keypad with Num Lock ON, and the top row
   numeric 2, 4, 6, and 8 keys. Even though you have Num Lock ON, you
   interpret the numeric keypad keys in terms of the arrows they also
   carry. (This differs from the version 0.7a release of DosLynx, that
   allowed the user to use the Lynx arrow keys for anchor navigation. That
   is no longer supported.) The off-keypad arrow keys are now reserved for
   scrolling, only. If you have an original PC keyboard, without off-keypad
   arrow keys, you'll probably want to leave Num Lock OFF. So you can use
   the keypad's arrow keys for scrolling. In that case, you'll need to
   learn to use Tab, Shift-Tab, hjkl, and/or some of the top row numeric
   keys for anchor navigation.

   Keys we'll call "the scrolling keys" all provide for you to look through
   a document that is longer than your display. These are: The numeric
   keypad's End, PgDn, Home, and PgUp keys (with Num Lock ON). The top row
   numeric 1, 3, 7, and 9 keys. The off-keypad Page Down, Page Up, and
   arrow keys. And, the Space Bar. The off-keypad End, Page Down, Home,
   Page Up, and arrow keys also provide for moving and scrolling within
   list box and other input control dialogs. Ctrl-Page Down and
   Ctrl-Page Up (and, the numeric keypad's Ctrl-PgDn and Ctrl-PgUp, with
   Num Lock OFF) provide alternatives to 1 and 7, for moving to the end and
   beginning of a document or list box.

   Esc closes the Messages window and cancels other dialog windows. This is
   equivalent to pressing a dialog's cancel button. In a dialog with
   multiple buttons along the bottom, the cancel button is always the
   right-most one. Esc also provides a "break" or "abort" key, within the
   Messages window, when DosLynx is busy preparing a document's
   presentation. It interrupts any TCP/IP reception, parsing, or formatting
   process that may be underway. After TCP/IP reception and/or parsing gets
   interrupted, DosLynx will move on to its formatting process. So, hit Esc
   again, then, if you want to cancel that, too. Esc doesn't close the
   document presentation window(s), however.

   Enter pushes the selected (if any) or default button in dialog windows.
   In a dialog with multiple buttons along the bottom, the default button
   is always the left-most one. Enter activates links or Form input dialogs
   in document presentation windows. And, it activates the currently
   selected menu entry in menus.

   Space pushes the selected button in dialog windows. And, it moves down a
   screen in document presentation windows. In the Messages window, a
   Space Bar tap provides a safe way to check to see if DosLynx is busy
   with anything.

   Alt-n, where n is an open window number digit, from the keyboard's top
   row, quickly makes window n the currently active window.

   The TMemo editor provides a text selection feature to facilitate
   clipping away large text areas. Text may be selected by moving the
   cursor, with arrow key(s), while holding a Shift key down. Or, by moving
   the mouse while holding either of its buttons down. Then, a Backspace or
   Del(ete) key will delete all of the selected text. If a mistake is made
   while selecting text, an un-shifted arrow key may be used to remove any
   selection present. Also, Shift and Ctrl-Shift combinations with the
   Page Up, Page Down, PgUp, and PgDn keys provide special selections.
   Shift-Page Up and Shift-PgUp select all of the text from the top of the
   screen to the character ahead of the cursor. While, Ctrl-Shift-Page Up
   and Ctrl-Shift-PgUp select all of the text from the very beginning of
   the edited data to the character ahead of the cursor. Similarly,
   Shift-Page Down and Shift-PgDn select all of the text from the cursor to
   the bottom of the screen. While, Ctrl-Shift-Page Down and
   Ctrl-Shift-PgDn select all of the text from the cursor to the very end
   of the edited data.

   If you use a mouse with DosLynx, you can select an anchor or Form input
   control by using a single left button click. And, you can activate an
   anchor or Form input control by using a double left button click. Prior
   to DosLynx v0.27b, a special case arose when attempting to select an
   inline image which also has a destination. That is, an inline image
   nested within an anchor. That special case has been eliminated. See the
   Special Notes section.

   Items contained in the status bar (the bottom line of your screen while
   running DosLynx) are selectable by the mouse only but correlate directly
   with items in the Navigate menu. These items will be bright or dim to
   indicate whether the indicated menu entries or commands are currently
   available or active, or not. In addition, the right mouse button is the
   same as issuing the Window|Clone Window command.


Special Notes on Usage

   As of the DosLynx v0.44b release, only the following URL types are
   supported:

	file
	ftp
	http
        https *
	mailto
	news

*  https is supported only by the DosLynx 32-bit Protected Mode version.


   Prior to DosLynx v0.27b, when attempting to select an inline image with
   a mouse, you might not have gotten what you expected. Some inline images
   also have destinations, in which case you would be taken to that
   destination. You needed to use the keyboard to select an inline image
   which also had a destination. Starting with DosLynx v0.27b, such nested
   inline images are given their own visible place holders. That allows
   their access via the mouse, just like unnested inline images.

   For best DosLynx performance, specify the temporary file directory in
   your configuration file or on the command line to be a directory on a
   RAMDRIVE. But, only consider this if you have more than two MB of EMS or
   XMS memory available, for the DosLynx Real Mode version. If you are
   using either DosLynx v0.44b Protected Mode version, don't consider a
   RAMDRIVE unless you have at least eight MB of RAM available. If you have
   only a relatively small quantity of EMS or XMS memory available, there
   are a couple of ways that DosLynx can use that, without a RAMDRIVE.
   First, the DosLynx v0.44b Real Mode version can make good use of up to
   about 320 KB (20 EMS pages) of this memory, for holding its overlays.
   Specify the ems= and/or xms= configuration option(s) to enable this
   usage. Also, if you have EMS or XMS memory available, DosLynx will be
   able to use over 500 KB more of that, without a RAMDRIVE. When it swaps
   itself out of standard memory for running DLXVIEW or DOS commands.
   DosLynx is able to run successfully, though somewhat slowly, without any
   EMS or XMS memory available. See your DOS documentation for setting up a
   RAMDRIVE specific to your system.

   DosLynx is a multiple document interface (MDI) application. This may
   confuse new users that are used to other World Wide Web clients.
   Remember: Using the File|Open URL... (with its Open button) or
   File|Open Local... menu items or equivalent hotkeys, or submitting a
   Form, leads to opening a new window. Whenever the opened URL or document
   or Form submission's response is presentable. The first nine windows are
   numbered in their upper right corners. You can switch among these
   windows by pressing the Alt key and the window number simultaneously.
   All windows can be reached via the Window|Next menu entry or its F6 key
   short-cut.

   Each open window usually represents at least one open temporary file. If
   you try to open more windows than you have FILES specified in your
   CONFIG.SYS file, DosLynx will shut down. If you have at least FILES=20
   specified, however, this may not be a problem. Because, with the DosLynx
   Real Mode version, you'll tend to run out of memory at about the same
   time as you hit the open FILES limit. With the DosLynx Protected Mode
   versions, you'll have to be a little more careful. A good way to handle
   this is to avoid opening another new window once you have all nine of
   the numbered windows open. So, make sure you have at least FILES=20
   specified in your CONFIG.SYS file. There may be little to be gained from
   specifying more than FILES=20, without taking additional measures.

   When the DosLynx Real Mode version has used most of your computer's
   memory, the File|Dos Shell command will not work, if DOSLYNX.CFG
   contains shoswap=NO. Your computer simply does not have enough standard
   DOS memory to execute your command interpreter. By default, shoswap=YES,
   enabling DosLynx to swap most of itself out of memory, to avoid this
   problem.

   When you ftp a file or activate an anchor that DosLynx cannot display as
   text, you are asked to give a file name to save the information in. A
   filename may be suggested by DosLynx. These files are not removed by
   DosLynx when you exit the application. This allows you as the user to do
   what you will with such files after exiting DosLynx. However, presently,
   DosLynx does not consider existing files in making its suggestion. If
   you are prompted to save a file that is already on your disk, consider
   using another name before letting the file you already have be
   over-written.

   When DosLynx terminates unexpectedly, the temporary file(s) it has
   opened may remain in the temporary file directory you specified in the
   configuration file or on the command line. The temporary file names
   follow the pattern of DL*.$$$. You no longer have to remove these files
   yourself unless you are very low on disk space, however. Beginning with
   version 0.20 beta, DosLynx removes any of these files it finds, at the
   beginning of each run, to keep them from accumulating.

   Beginning with version 0.24 beta, there is an exception to the preceding
   rule. DosLynx now checks to see if another instance of DosLynx is
   already running. (That will be the case if you run DosLynx while shelled
   out of DosLynx to a DOS command prompt.) If so, it refrains from
   removing any temporary file(s). That restraint is necessary to keep from
   destroying the already running instance of DosLynx! DosLynx issues a
   reminder message when it decides not to remove any temporary file(s).

   If you are wondering, the menu bar contains the current time in the
   upper right hand corner. In the status bar are three numbers in the
   lower right corner. These numbers are, from left to right: The current
   network activity in bytes. The free space in bytes on the temporary
   drive you specified. And, the amount of available heap memory in bytes.
   These were originally run-time debugging tools for the developer of
   DosLynx. They were left in as they are now harmless and give the user
   useful information on what is happening while DosLynx is at work. They
   can be turned off with the /B command line option, if desired. The /U
   command line option also turns off the rightmost two of these three
   numbers.

   To force DosLynx into a supported black and white video mode, type
   C:\DOSINET>mode BW80
   at your DOS prompt. Consider doing this if you monitor is black and
   white but DosLynx considers it a color monitor (monochrome EGA
   monitors). Anchor text, selected anchor text, and text located by the
   Navigate|Find . . . commands should all be distinguishable from normal
   text and each other, on your monitor. If that isn't the case with your
   monitor, take a look at the contrast= configuration value added to
   DosLynx in version 0.29b. It should be able to provide you with a
   display attribute table selection that provides the needed contrasts,
   with your monitor. Use of the contrast= configuration value is explained
   by extensive comments in the DOSLYNX.CFG file.

   If you have severe trouble with your mouse driver, check into the mouse=
   configuration value added to DosLynx in version 0.32b. Such trouble
   might take the form of a DosLynx crash the first time you move the
   mouse, in a DosLynx session. This trouble might come for only one of the
   three DosLynx versions. mouse= configuration allows you to tell the
   DosLynx Real Mode version or Protected Mode versions, or all three, to
   ignore your mouse driver. That will prevent the kind of crash pictured
   above.

   If you have an older (read: slower) PC, you'll probably wish for better
   performance from DosLynx from time-to-time. Here are a few more things
   you can do to speed it up:


   Forgo a Home File
	  Use loadhome=OFF in DOSLYNX.CFG, /HOFF on the command line, or
	  give the home= configuration option the name of a short or empty
	  file. This will save the time needed to display INFO.HTM each
	  time you start DosLynx.

   Remove All the Comments From DOSLYNX.CFG
	  Once you are satisfied with your configuration and are sure that
	  you have backup copies of it, go through DOSLYNX.CFG and remove
	  all of the comment lines. Again, this will save time each time
	  you start DosLynx. Shortening DOSLYNX.CFG also saves time upon
	  the first use of TCP/IP communication in each DosLynx session.

   Keep the Directories You Use Frequently Short
	  DosLynx can take a few seconds to develop a local file dialog box
	  on a PC-XT, when the present DOS directory contains hundreds of
	  entries. If you can keep the directories you use the most
	  relatively short, you'll save time each time you invoke a local
	  file dialog.

   Don't Configure debugen=ON
	  If DosLynx is slow in shutting-down, make sure you don't have
	  debugen=ON specified in DOSLYNX.CFG.


New DosLynx Features

   The following new features have been added to DosLynx, in releases
   beginning with DosLynx version 0.20 beta:


   <BASE HREF= . . . > tags
	  DosLynx now honors these tags when they appear in HTML. They also
	  are provided to local files written by the File|Open URL... (with
	  its Download button), File|Save Source, and
	  Navigate|Download Selection menu entries. These provisions enable
	  relative URLs to be properly reproduced when the local files are
	  later viewed.

   <META . . . > tags
	  DosLynx is now also displaying many of these tags when they
	  appear in HTML. <META HTTP-EQUIV=REFRESH CONTENT= . . . > tags
	  specifying URLs are now treated like anchors, too. Beginning with
	  DosLynx v0.26b, a showmetas= configuration option controls the
	  display of most <META . . . > tags, along with two other forms of
	  meta content. These things are described in some detail by
	  comments in the provided sample DOSLYNX.CFG file.

   Temporary Files
	  At startup, DosLynx will now remove any of its own temporary
	  files that it finds abandoned in the configured temporary
	  directory. Beginning with DosLynx v0.24b, this action will be
	  withheld when DosLynx detects another instance of itself already
	  running. In that case, a reminder message will be issued.

   Unexpected Shut Downs
	  DosLynx will now pause to give its user 15 seconds to read its
	  final messages before exiting.

   Swap Out for Graphics Viewing and Escape to DOS Shell
	  DosLynx will now swap most of itself out of main memory, to XMS
	  or EMS memory or a temporary file, before invoking DLXVIEW to
	  display a graphic file. If shoswap=NO is not configured, DosLynx
	  also will swap most of itself out of main memory, to XMS or EMS
	  memory or a temporary file, before shelling out to DOS. The
	  shoswap=NO configuration option is ignored by the DosLynx
	  Protected Mode versions and is mainly a debug tool.

   Intra-Session History Added
	  The present view's current top line and currently selected anchor
	  will be noted when an anchor is activated. i.e.: When a link is
	  followed. Upon return, or a linked-from view's reinstatement, the
	  noted top line position and anchor selection will be restored to
	  the reinstated view. Beginning with version 0.32 beta, the
	  Intra-Session History also includes each document's Referer URL,
	  if any. That provides for resending the HTTP Referer: field if a
	  document needs refetching when it gets reinstated.

   debugen= Configuration Option Added
	  The debugen= configuration option enables heapcheck(ing) while
	  DosLynx shuts down. heapcheck( ) discovers heap corruption
	  resulting from certain kinds of software errors. Configuring
	  debugen=ON may help to avoid crashing during shut-down. However,
	  it is a luxury that probably isn't affordable on slower PCs.
	  (Shut-down can take as long as 45 minutes on a PC-XT with
	  debugen=ON!) Beginning with DosLynx v0.24b, the debugen=
	  configuration option also enables a detailed trace of the
	  DosLynx/server dialog that occurs during a DosLynx ftp access.
	  This may help you discover what is going wrong if and when an ftp
	  access fails repeatedly. The default value for debugen= is OFF.
	  Possible values are OFF and ON.

   Messages Window Now Pops Up Over ERROR.HTM
	  Beginning with DosLynx v0.22b, the Messages window will pop up
	  over ERROR.HTM whenever it is presented as the result of a
	  problem. This saves you from having to fumble around to see your
	  messages after a problem has been encountered. The Esc key now
	  provides a one key way to dismiss the Messages window.

   DEHEAD Utility Now Provided with DosLynx
	  Beginning with DosLynx v0.22b, the DosLynx release package
	  includes the DEHEAD utility program. It provides for removing the
	  headers that DosLynx adds to the local copies of files written
	  via the File|Open URL... (with its Download button),
	  File|Save Source, and Navigate|Download Selection menu entries.
	  It will copy everything in a file after its first blank line.

   NEWSURLS.HTM Now Provided with DosLynx
	  Beginning with DosLynx v0.22b, the DosLynx release package
	  includes a description of the news URLs that DosLynx accepts, in
	  NEWSURLS.HTM.

   Forms Support Added to DosLynx
	  DosLynx v0.24b brought an initial installment of Forms support.
	  Implemented, here, are the HTML <FORM METHOD=get . . . and
	  <INPUT . . . tags -- for input TYPEs checkbox, hidden, password,
	  radio, reset, submit, and text.

	  DosLynx v0.25b brought two more Form input controls. These
	  support the HTML <SELECT . . . and <INPUT TYPE=image . . . tags.
	  (The former supports neither MULTIPLE nor SIZE= attributes. The
	  latter is implemented as a combination of an HTML <IMG . . . tag
	  and an <INPUT TYPE=submit . . . tag. It doesn't provide any
	  cursor coordinate data.)

	  DosLynx v0.27b brought support for the HTML <TEXTAREA . . . tag
	  or Form input control.

	  DosLynx v0.28b brought support for the HTML
	  <FORM METHOD=POST . . . variation, at last. You should now find
	  that you have full read/write access to many of the Web's
	  numerous Forum type sites.

	  DosLynx v0.31b brought a Paste File push button for the Textarea
	  Form input control or dialog.

   News Client Support for yEncoded Data
	  Beginning with DosLynx v0.24b, the File|Save Source and
	  Navigate|Download Selection menu entries will provide transparent
	  handling for news: documents containing yEncoded data. The
	  File|Open URL... menu entry's Download button, added in
	  DosLynx v0.25b, will provide this transparent handling, as well.

   Loose Find Added to DosLynx
	  Beginning with DosLynx v0.24b, the Navigate|Find... dialog will
	  provide two push buttons for starting a search. An "Exact Find"
	  button will provide a search using exact matching. This is the
	  only mode previously offered. In addition, a "Loose Find" button
	  will now provide a search using case insensitive (loose)
	  matching.

   swapmem= Configuration Option Added
	  Beginning with DosLynx v0.24b, the swapmem= configuration option
	  will determine whether or not any access is made to EMS and/or
	  XMS memory for swapping DosLynx out of standard DOS memory. This
	  option is intended to provide a bypass for problem(s) encountered
	  with the EMS and/or XMS services in some installations. swapmem=
	  need not be configured unless one suspects they are having
	  trouble in this area. (The symptoms of such a problem may be that
	  DosLynx misbehaves when resumed after a swap out.) swapmem= is
	  specified in terms of the memory services that SWAP is allowed to
	  access. Possible values are: Both (same as default, starting with
	  DosLynx v0.22b -- SWAP accesses XMS memory, and then EMS memory
	  if necessary). EMS (SWAP accesses EMS, but not XMS, memory). XMS
	  (same as provided in DosLynx v0.20b -- SWAP accesses XMS, but not
	  EMS, memory). And, Neither (SWAP only accesses the disk).

   HTML <IMAGE . . . tags
	  Beginning with DosLynx v0.24b, <IMAGE will be recognized in HTML
	  as a synonym for the <IMG tag. This is necessary to support
	  apparently non-standard HTML that is recognized by Internet
	  Explorer and used at http://www.microsoft.com . For an example of
	  this, see:
	  http://www.microsoft.com/windows98/downloads/contents/wurecommend
	  ed/s_wufeatured/win98se/

   DHCP Client Support Added
	  Beginning with DosLynx v0.25b, my_ip=DHCP will be recognized in
	  DOSLYNX.CFG for obtaining TCP/IP configuration information from a
	  DHCP server. This has been implemented so as to avoid any change
	  in the operation of the existing my_ip=BOOTP support, when that
	  is configured. Beginning with DosLynx v0.39b, my_ip=EDHCP also
	  will be recognized, for obtaining TCP/IP configuration
	  information from a DHCP server that wants to know a little more
	  about DosLynx. When my_ip=(E)DHCP is configured, mss= must
	  specify 576 or more or be allowed to default (to 1400). Comments
	  in DOSLYNX.CFG provide more on these things.

	  Beginning with DosLynx v0.38b, Client-Identifier,
	  IP Address Lease Time, and Vendor Class Identifier DHCP Option
	  fields will be included in the DosLynx DHCP Discover message.
	  These seem to be needed to satisfy recent DHCP server
	  implementations. Beginning with DosLynx v0.39b, these fields only
	  will be included in the DosLynx DHCP Discover message sent as a
	  result of my_ip=EDHCP configuration.

   File|Open URL... Download Button Added
	  Beginning with DosLynx v0.25b, the File|Open URL... dialog will
	  contain a Download button, in addition to Open (formerly OK) and
	  Cancel buttons. The new Download button provides for
	  File|Save Source or Navigate|Download Selection type handling for
	  directly entered URLs. The Open button remains the
	  File|Open URL... dialog's default and operates just as the former
	  OK button did.

   Navigate|Go To Menu Entry Added
	  Beginning with DosLynx v0.29b, the Navigate|Go To command will
	  provide for accessing or reusing all of the URL(s) visited and
	  still pending in each open window. This command's dialog provides
	  push buttons for the following three actions: Use the Go Back
	  button to return to a selected URL. This allows one or more
	  intermediate views to be bypassed, for saving time in returning.
	  Use the Go Again button to open a selected URL in a new window.
	  Or, use the Paste button to paste a selected URL into the
	  File|Open URL... dialog's history. From there, the pasted URL may
	  be edited and/or used for opening a new window or downloading.

   Navigate|Show Destination URL Paste Button Added
	  Beginning with DosLynx v0.29b, the Navigate|Show Destination URL
	  command will provide a push button for pasting the anchor it is
	  reporting into the File|Open URL... dialog's history. That saves
	  you from having to type in an anchor you want to edit for use.

   Support for Monochrome Monitors Improved
	  A fourth display attribute table and the contrast= configuration
	  option were added to DosLynx in version 0.29b. These provide
	  improved contrast for what have been troublesome monochrome video
	  adapters or monitors. See the DOSLYNX.CFG file for more
	  information on the new contrast= configuration option.

   DosLynx Protected Mode Version Released
	  Beginning with version 0.30 beta, DosLynx will be offered in both
	  its traditional Real Mode version and in a 16-bit Protected Mode
	  version. If your system can be equipped with a
	  DOS Protected Mode Interface (or, DPMI) service, you will be able
	  to run either version. The DosLynx v0.44b 16-bit Protected Mode
	  version has about nine times as much memory, as the Real Mode
	  version, to work with. (Over 2.3 MB versus about 250 KB.) This
	  extra memory virtually eliminates the inability to completely
	  present some very large documents, still present in the Real Mode
	  version.

	  Beginning with version 0.36 beta, DosLynx will also be offered in
	  a 32-bit Protected Mode version. The DosLynx v0.44b 32-bit
	  Protected Mode version has about eight times as much memory, as
	  the Real Mode version, to work with. (Over 2.0 MB versus about
	  250 KB.) The DPMI usually doesn't provide for using combinations
	  of Protected Mode programs with unmatched register sizes. So,
	  having both 16-bit and 32-bit Protected Mode versions gives you
	  added flexibility for using DosLynx together with other
	  Protected Mode software.

	  DPMIREVU.HTM, reports on DPMI serving software with which DosLynx
	  has been tested. It is included in the DosLynx Protected Mode
	  Add-On Package.

   SMTP AUTH LOGIN Support Added
	  Beginning with version 0.31 beta, the DosLynx e-mail client
	  provides optional SMTP AUTH LOGIN support. Supplying the new
	  b64usrid= configuration option together with the new b64passw=
	  configuration option or the new /S command line option enables
	  this support. Without SMTP AUTH LOGIN enabled, the DosLynx e-mail
	  client sends a HELO command, to initiate a session with the
	  configured SMTP server. With SMTP AUTH LOGIN enabled, an EHLO
	  command will be sent. The e-mail client attempts SMTP AUTH LOGIN
	  when AUTH LOGIN is found "advertised" in the server's response to
	  the EHLO command. Failed SMTP AUTH LOGIN attempt(s) prevent
	  sending mail and get reported in the DosLynx Messages window.
	  SMTP AUTH LOGIN is discussed in at least two other sections of
	  this document. (Use Navigate|Find... and specify SMTP to find
	  those sections.)

   Paste File Buttons Added
	  Beginning with version 0.31 beta, the DosLynx Send Mail and Form
	  Textarea TMemo dialogs contain Paste File push buttons. These
	  provide for reading text file(s) into the note or text (TMemo
	  object) being composed. Further editing may be performed on such
	  text file(s) data after it has been read.

   Mouse Driver Configuration
	  Beginning with version 0.32 beta, DosLynx provides a mouse=
	  configuration value. This allows you to tell the DosLynx
	  Real Mode version or Protected Mode versions, or all three, to
	  ignore your installed mouse driver. That provides a bypass for a
	  severely problematic mouse driver.

   HTTP Referer: Header Field Support
	  Beginning with version 0.32 beta, DosLynx supports sending the
	  HTTP Referer: Header field in its GET and POST requests. This is
	  described in RFC 2616, Hypertext Transfer Protocol -- HTTP/1.1,
	  section 14.36. refmode= configuration and a new
	  Options|Manage HTTP Referer Mode menu entry or command provide
	  for configuring and managing this support. By default, sending
	  the Referer: field is disabled or vetoed.

   Complete ISO-8859-1 Character Set Support
	  Beginning with version 0.33 beta, DosLynx provides complete
	  support for the ISO-8859-1 (8-bit) character set. However, seeing
	  all of the ISO-8859-1 characters properly also depends on having
	  your DOS system set up to use display and/or printer
	  Code Page 850. In many english speaking countries, this isn't the
	  default. Refer to the Code Page 850 Cook Book section (above),
	  for information on arranging this setup.

   fromname= Configuration Added
	  Beginning with version 0.33 beta, DosLynx provides a fromname=
	  configuration option. It accepts "your name in real life", for
	  use on the From: line of e-mail that you send.

   Limited Support for Five More HTML Tags
	  Beginning with version 0.33 beta, DosLynx will handle the
	  <BGSOUND . . . and <EMBED . . . tags as additional near synonyms
	  for <IMG . . . This means that a link will be provided to the
	  resources that those tags advertise. The place holders for these
	  links will be [BGSOUND] and [EMBED], when showmetas=NO is
	  configured. And, [urlfilename], otherwise. Also, <IFRAME . . .,
	  <ILAYER . . ., and <LAYER . . . tags will be handled, the way
	  <FRAME . . . tags have long been handled. You'll see a Frame: or
	  Layer: label followed by a link to the tag's src= specified URL.

   HTTP Cookie(s) Support
	  Beginning with version 0.34 beta, DosLynx supports the HTTP
	  Set-Cookie: and Cookie: Header fields. This is described in
	  http://wp.netscape.com/newsref/std/cookie_spec.html . cookiedir=
	  and cookiemode= configuration and a new
	  Options|Manage HTTP Cookie Mode menu entry or command provide for
	  configuring and managing this support. By default, Cookie(s)
	  Support is disabled or vetoed.

   Limited Support for the HTML <DIV . . . Tag
	  Beginning with version 0.34 beta, DosLynx supports the
	  HTML <DIV . . . tag and its align= attribute, for settings of
	  left, center, or right. Support for the HTML <P . . . tag's same
	  align= attribute settings has been added, too.

   smtphost= Configuration Extended to Include Host's Port Number
	  Beginning with version 0.34 beta, DosLynx configuration for your
	  SMTP (mail) Host's address may include the port it listens on, if
	  it isn't the well known port 25. This enables the DosLynx e-mail
	  client's use with ISP(s) that have changed their SMTP server(s)
	  to listen, for e-mail submission(s), on TCP/IP port 587.

   Limited UTF-8 Character Set Support
	  Beginning with version 0.35 beta, DosLynx provides limited
	  support for UTF-8 coded documents. The supported UTF-8 characters
	  and character sequences correspond to all of the ISO-8859-1
	  characters, together with nine additional characters that aren't
	  included in the ISO-8859-1 character set. Seeing all of the
	  ISO-8859-1 characters properly also depends on having your DOS
	  system set up to use display and/or printer Code Page 850. In
	  many english speaking countries, this isn't the default. Refer to
	  the Code Page 850 Cook Book section (above), for information on
	  arranging this setup.

	  Beginning with version 0.38b, 23 more Unicode characters (for a
	  total of 32) that aren't included in the ISO-8859-1 character set
	  will be recognized in UTF-8 coded documents. And, as numeric
	  character references, in HTML documents with any encoding.

   Support for (Anti)Caching Directives
	  DosLynx v0.35b also brings support for the
	  Expires: <datetimestring> and Pragma: no-cache HTTP Header fields
	  and corresponding HTML <META HTTP-EQUIV= . . . tags. And, the
	  Cache-Control: . . . HTTP Header field. Elsewhere, these Header
	  fields and tags are referred-to as "(anti)caching directives".

	  This support should improve your experiences with "login" type
	  Forms and Cookies-using Web servers. By insuring that you see
	  updated versions of Web pages that get changed in the course of
	  your interactions with their Web site(s). However, if you have
	  lower speed Internet service, you may find the document
	  refetching this support implies annoying. If so, you may use
	  histmode=ON configuration to defeat the new support. See the
	  sample DOSLYNX.CFG file provided for more information on this
	  configuration.

   https/SSL/TLS Support Added
	  The DosLynx v0.38b 32-bit Protected Mode variation or version
	  brings support for secure sessions, or https URLs, at last! This
	  is support that is required by many servers that provide for
	  Login(s) or transfers of sensitive data.

	  Beginning with DosLynx v0.44b, this support is provided by means
	  of an OpenSSL v1.0.2u library provided in the DJGPP tools.
	  DosLynx provides each server name to be accessed to its OpenSSL
	  client in order to support the SNI function. As a result, the
	  server names being accessed are likely revealed in the SSL/TLS
	  client's hello message(s). DosLynx still does not provide for
	  checking the authenticity of server Certificates.

   TLS/SSL Support Added for E-mail Client
	  The DosLynx v0.39b 32-bit Protected Mode variation or version
	  brings support for secure SMTP e-mail sending sessions. This
	  support may be required by SMTP hosts that also require an
	  SMTP AUTH LOGIN.

	  Beginning with DosLynx v0.44b, this support is provided by the
	  same OpenSSL v1.0.2u library that provides the https/SSL/TLS
	  support in the DosLynx 32-bit Protected Mode variation or
	  version. DosLynx does not provide the E-mail server's name to its
	  OpenSSL client. So, the SNI function is not supported for E-mail.
	  Nor does it provide for checking the authenticity of server
	  Certificates. A new configuration item, smtpsec=, provides a
	  choice of two SSL Protocol variations for SMTP. These are
	  described in comments in the sample DOSLYNX.CFG file provided.

   TCPINFO Utility Now Provided with DosLynx
	  Beginning with version 0.38b, the Traditional DosLynx Real Mode
	  Package will include a DosLynx-centric make of the WATTCP
	  TCPINFO.EXE utility. This TCPINFO provides a mostly comment-free
	  view of one's WATTCP.CFG or DOSLYNX.CFG file(s) and the result(s)
	  for my_ip=BOOTP, my_ip=DHCP, or my_ip=EDHCP configuration. This
	  TCPINFO is made with the same WATTCP library used to make
	  DosLynx. So, its result(s) for BOOTP and (E)DHCP may be expected
	  to match the result(s) that DosLynx gets.

   WATTCP sock_setbuf( ) Support
	  Beginning with version 0.38b, the DosLynx Protected Mode
	  variations or versions will provide an optional 24 KB TCP
	  assembly buffer when dnldbufs=0 is configured. This lengthened
	  buffer is provided to the DosLynx WATTCP component via its
	  sock_setbuf( ) call. On newer (read: faster) PCs with high speed
	  Internet connections, this lengthened buffer should greatly
	  improve downloading speed. (As this is a double buffer, its
	  memory requirement makes it impractical for the DosLynx Real Mode
	  variation or version. However, PCs that are limited to using the
	  DosLynx Real Mode version usually aren't fast enough to be able
	  to make use of sock_setbuf( ) support, anyway.)

   Support for Hexadecimal Numeric Character References
	  Beginning with version 0.38b, DosLynx will support numeric
	  character references with decimal or hexadecimal values.

   File|Clip View Menu Entry Added
	  Beginning with DosLynx v0.41b, the File|Clip View command will
	  provide for clipping or extracting URL(s) or other relatively
	  short citations from rendered document(s). This command's dialog
	  provides Paste and Save As push buttons. You use the Paste push
	  button to move a URL clipping into the File|Open URL... menu
	  entry dialog's history, for use. The Save As push button allows
	  you to save a clipping in a local (clip board) file. In turn,
	  saved clipping file(s) may be pasted into the e-mail client's
	  TMemo dialog. Or, into the HTML Form TextArea input control's
	  TMemo dialog.

   Save As Dialog's Results To Go To File Open Dialogs' History
	  Beginning with DosLynx v0.41b, local file Save As dialog results
	  will be added to the local file open dialogs' history list. As
	  well as to the Save As dialogs' own history list. This enables
	  reaccessing new local file(s) without having to reenter their
	  name(s).


Removed DosLynx Features

   The following features were removed from DosLynx, starting at
   versions 0.20b, 0.22b, and 0.26b:


   Gopher Support
	  Yep, sorry. It's been taken out.

   Built-in .GIF Viewer
	  This has been replaced with the swap out and call to DLXVIEW
	  described in several places in this document. (Use
	  Navigate|Find... and specify DLXVIEW to find those places.)

   Bugs, Crashes, Hangs, and Loops
	  Most of these have been taken out, too. You may still see some
	  breakout( ) calls. But, each time you do, you'll be able to be
	  thankful for not having to reboot DOS and redial your ISP!

   wais Support
	  Yep, sorry. This one's gone, too.

   Local Graphics File Copying
	  Beginning with version 0.26b, DosLynx no longer finds it
	  necessary to copy local graphics files for the purpose of
	  submitting them to DLXVIEW for viewing. This provides a
	  noticeable performance improvement on older (read: slower) PCs.
	  We trust this copying "feature" won't be much missed.


Distributing DosLynx

   You may distribute DosLynx version 0.44 beta at your convenience so long
   that you distribute the original .ZIP file(s) obtained by the means
   listed in the Obtaining DosLynx section of this document. The DosLynx
   Protected Mode Add-On Package is not to be distributed without an
   accompanying distribution of the Traditional DosLynx Real Mode Package.


Credits

   The University of Kansas would like to thank the following organizations
   and people for their aid in the creation of DosLynx.

	Generous financial assistance given by O'Reilly and Associates
		and Intel Corporation.
	World Wide Web Source Library by CERN
	Waterloo TCP by Erick Engelke
	FTP code from James W. Matthews, Dartmouth Software Development
	Borland C/C++ and Turbo Vision by Borland International

   Further, The University by Kansas recognizes the following:

   Borland C/C++ and Turbo Vision
	  Trademarks of and Copyright by Borland International.
   World Wide Web Source Library
	  Copyright by CERN, Geneva, Switzerland.
   Waterloo TCP Library
	  Copyright by Erick Engelke.
   FTP code
	  Portions Copyright 1994 Trustees by Dartmouth College.

   Fred C. Macall, maintaining DosLynx since 2002, gratefully acknowledges
   the contributions of its original author, Garrett Arch Blythe. I am also
   grateful to Wayne S. Buttles who worked on DosLynx in 1996 and passed
   the baton in SRC_16A.ZIP. DosLynx now incorporates SWAP.ASM, which
   you'll see performs admirably. It contains the following notice:
   Copyright (C) 1990 by Marty Del Vecchio

   The DosLynx 16-bit Protected Mode version has been implemented through
   use of the Kevin Morgan Software Services Protected Mode APPlication
   construction toolkit, PMAPP.ZIP . Kevin's toolkit has provided me with
   the perfect spring board for my leap into the real world (or is it,
   parallel universe?) of Protected Mode software development! PMAPP.ZIP
   carries the following notice:
   This distribution copyright (c) 1994, Kevin Morgan. All rights reserved.

   The DosLynx 32-bit Protected Mode version has been implemented through
   use of DJGPP v2.05 resources and tools, in DOS! These include an elegant
   2 KB "stub loader", the GNU GCC v8.3.0 compiler, and the UPX v3.02
   eXecutable Packer. I have supplemented these with the Borland C/C++
   resources and tools, acknowledged above and below, and the MASM v6.11d
   assembler.

   The new 32-bit version's source comes from most of the same DosLynx,
   Turbo Vision v2.0, WATTCP, and WWW sources used for making the other
   DosLynx versions. All of these have been dragged into compliance with
   the GCC v8.3.0 compiler's and MASM v6.11d assembler's requirements. So,
   about 95 percent of the DosLynx source is shared in common among all
   three DosLynx versions. The resulting DOSLYNXS.EXE is quite a treasure!

   I expect that you may obtain all the DJ Delorie resources and tools
   including UPX v3.02, as I did, from:
   http://www.delorie.com/djgpp/

   The DosLynx 32-bit Protected Mode version's https/SSL/TLS support has
   been implemented by linking DosLynx with the OpenSSL v1.0.2u
   installation or library included with the DJGPP tools. OpenSSL also is
   available from:
   http://www.openssl.org/ .
   The detailed DosLynx/OpenSSL linkage has been adapted from one of
   Mark Mentovai's lynx-ssl patches. Those used to be available from:
   http://www.moxienet.com/lynx/ .
   Now, they seem to be gone from there. However, they may still be found
   in mirror site(s) such as:
   http://mirror.optus.net/sourceforge/m/ma/math-linux/lynx-282-ssl.patch .

   The Borland, DJGPP, GNU, Microsoft, UPX, and OpenSSL resources and tools
   carry far too many copyright notices to thoroughly list them here. What
   appear to be the key or principal copyright notices for these read as
   follows:

   Borland C++  Version 3.1 Copyright (c) 1992 Borland International

   The STUB.EXE stub loader is Copyright (C) 1993-1995 DJ Delorie.
   Permission granted to use for any purpose provided this copyright
   remains present and unmodified.
   This only applies to the stub, and not necessarily the whole program.

             GNU LIBRARY GENERAL PUBLIC LICENSE
                 Version 3, 29 June 2007

    Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org>
    Everyone is permitted to copy and distribute verbatim copies
    of this license document, but changing it is not allowed.

   gcc.exe (GCC) 8.3.0
   Copyright (C) 2018 Free Software Foundation, Inc.

   Microsoft (R) Macro Assembler Version 6.11d
   Copyright (C) Microsoft Corp 1981-1995.  All rights reserved.

    This file is packed with the UPX executable packer http://upx.sf.net
    UPX 3.02 Copyright (C) 1996-2007 the UPX Team. All Rights Reserved.

    Copyright (C) 1995-1998 Eric A. Young,  Tim J. Hudson
   (eay@cryptsoft.com)
    This product includes cryptographic software written by Eric A. Young
   (eay@cryptsoft.com).

    Copyright (c) 1998-2019 The OpenSSL Project. All rights reserved.
    This product includes software developed by the OpenSSL Project
    for use in the OpenSSL Toolkit (http://www.openssl.org/)

   Last Modified: by Fred C. Macall
   5 October 2020.

   Report errors to the address shown in this graphic.

    
