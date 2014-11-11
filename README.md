beCBL
=====

BattlEye Community Ban List (ArmA3)

Goal is to provide a central banlist solution for A3Wasteland servers, although this could be extended to all server that use BattlEye bans.txt

* Administration Interface, Different access levels (Group Admin, High Admin, Low Admin)
* Administration Interface, Auditing for admin actions, requiring notes. Different admin levels provide different ban options.
* Provide configurable canned reasons, messages, and time frames (configure what is display'd)
* Provide groups, seperating server owners from other server owners, for different ban list options.
* Provide hashed link to wget bans.txt (global) or different bans.txt based off Groups or Reasons.
* Ability to upload BattlEye Logs to automatically phrase and add known hack menus to ban list.
* All bans are unique id'd for history and repeal process.


Sample format

ff23fb86043512134535421545435ed2 -1 TOP #1 TeamKill indefinite - bans.becbl.com 
dd23fb8609bsfag434t34245a3c75ed2 -1 TOP #2 Exploit indefinite - bans.becbl.com 
ad34fbdsaf3243534ftga44ea3c75ed2 -1 AJ #3 Exploit indefinite - bans.becbl.com 
cc23fb8609b9a8ed2df7f44ea3c75ed2 1415673088 TOP #4 TeamKill 1 day - bans.becbl.com 

GUID TIME GROUP UID REASON TIMEFRAME - REPEAL LINK 
