
module.exports = class Commander

  constructor: (@password = '', @lineEnding = '\r\n') ->
    unless @password
      throw new Error('A password is required')

  $$: (prefix, mode) =>
    if prefix and mode
      "at ??=\"#{prefix}\",#{mode}#{@lineEnding}"
    else if prefix
      "at ??=\"#{prefix}\"#{@lineEnding}"
    else
      "at ??#{@lineEnding}"

  echo: (status) =>
    "at e#{status}#{@lineEnding}"

  cgmi: =>
    "at+cgmi#{@lineEnding}"

  cgmm: =>
    "at+cgmm#{@lineEnding}"

  cgmn: =>
    "at+cgmn#{@lineEnding}"

  cgmp: =>
    "at+cgmp#{@lineEnding}"

  cgmr: =>
    "at+cgmr#{@lineEnding}"

  cgms: =>
    "at+cgms#{@lineEnding}"

  cgsn: =>
    "at+cgsn#{@lineEnding}"

  cimi: =>
    "at+cimi#{@lineEnding}"

  cpas: =>
    "at+cpas#{@lineEnding}"

  cfun: (level, reset) =>
    if level and reset
      "at+cfun=#{level},#{reset}#{@lineEnding}"
    else if level
      "at+cfun=#{level},0#{@lineEnding}"
    else
      "at+cfun?#{@lineEnding}"

  cbc: =>
    "at+cbc#{@lineEnding}"

  cmee: (level) =>
    "at+cmee=#{level}#{@lineEnding}"

  cscs: (charset) =>
    if charset
      "at+cscs=\"#{charset}\"#{@lineEnding}"
    else
      "at+cscs?#{@lineEnding}"

  cnum: =>
    "at+cnum#{@lineEnding}"

  creg: (mode) =>
    if mode
      "at+creg=#{mode}#{@lineEnding}"
    else
      "at+creg?#{@lineEnding}"

  cops: (mode, format, operator) =>
    if mode and format and operator
      "at+cops=#{mode},#{format},\"#{operator}\"#{@lineEnding}"
    else if mode and operator
      "at+cops=#{mode},0,\"#{operator}\"#{@lineEnding}"
    else if mode
      "at+cops=#{mode}#{@lineEnding}"
    else
      "at+cops?#{@lineEnding}"

  cpol: (index, format, operator, act, comp_act, utra_act) =>
    if index and format and operator and act and comp_act and utra_act
      "at+cpol=#{index},#{format},\"#{operator}\",#{act},#{comp_act},#{utra_act}#{@lineEnding}"
    else if index and operator and act and comp_act and utra_act
      "at+cpol=#{index},0,\"#{operator}\",#{act},#{comp_act},#{utra_act}#{@lineEnding}"
    else if index and format and operator
      "at+cpol=#{index},#{format},\"#{operator}\"#{@lineEnding}"
    else if index and operator
      "at+cpol=#{index},0,\"#{operator}\"#{@lineEnding}"
    else if index
      "at+cpol=#{index}#{@lineEnding}"
    else
      "at+cpol?#{@lineEnding}"

  cpls: (plmn) =>
    "at+cpls=#{plmn}#{@lineEnding}"

  clck: (facility, mode, password, klass) =>
    if facility and mode and password and klass
      "at+clck=\"#{facility}\",#{mode},\"#{password}\",#{klass}#{@lineEnding}"
    else if facility and mode and password
      "at+clck=\"#{facility}\",#{mode},\"#{password}\"#{@lineEnding}"
    else
      "at+clck=\"#{facility}\",#{mode}#{@lineEnding}"

  cpwd: (facility, newPassword) =>
    "at+cpwd=\"#{facility}\",\"#{@password}\",\"#{newPassword}\"#{@lineEnding}"

  ccug: (n, index, info) =>
    if n and index and info
      "at+ccug=#{n},#{index},#{info}#{@lineEnding}"
    else if n and index
      "at+ccug=#{n},#{index}#{@lineEnding}"
    else if n
      "at+ccug=#{n}#{@lineEnding}"
    else
      "at+ccug?#{@lineEnding}"

  clcc: =>
    "at+clcc#{@lineEnding}"

  cusd: (n, ussd, dcs) =>
    if n and ussd and dcs
      "at+cusd=#{n},\"#{ussd}\",#{dcs}#{@lineEnding}"
    else if n and ussd
      "at+cusd=#{n},\"#{ussd}\"#{@lineEnding}"
    else if n
      "at+cusd=#{n}#{@lineEnding}"
    else
      "at+cusd?#{@lineEnding}"

  cpin: (pin, newPin) =>
    if pin and newPin
      "at+cpin=\"#{pin}\",\"#{newPin}\"#{@lineEnding}"
    else if pin
      "at+cpin=\"#{pin}\"#{@lineEnding}"
    else
      "at+cpin?#{@lineEnding}"

  cind: (bci) =>
    if bci
      "at+cind=#{bci}#{@lineEnding}"
    else
      "at+cind?#{@lineEnding}"

  cpbs: (storage) =>
    if storage
      "at+cpbs=\"#{storage}\"#{@lineEnding}"
    else
      "at+cpbs?#{@lineEnding}"

  cpbr: (start, end) =>
    if start and end
      "at+cpbr=#{start},#{end}#{@lineEnding}"
    else
      "at+cpbr=#{start}#{@lineEnding}"

  cpbw: (index, number, type, alpha) =>
    if index and number and type and alpha
      "at+cpbw=#{index},\"#{number}\",#{type},\"#{alpha}\"#{@lineEnding}"
    else if index and number and type
      "at+cpbw=#{index},\"#{number}\",#{type}#{@lineEnding}"
    else if index and number
      "at+cpbw=#{index},\"#{number}\"#{@lineEnding}"
    else
      "at+cpbw=#{index}#{@lineEnding}"

  crsm: (command, fileId, p1, p2, p3, data) =>
    if command and fileId and p1 and p2 and p3 and data
      "at+crsm=#{command},#{fileId},#{p1},#{p2},#{p3},\"#{data}\"#{@lineEnding}"
    else if command and fileId and p1 and p2 and p3
      "at+crsm=#{command},#{fileId},#{p1},#{p2},#{p3}#{@lineEnding}"
    else if command and fileId
      "at+crsm=#{command},#{fileId}#{@lineEnding}"
    else
      "at+crsm=#{command}#{@lineEnding}"

  cmar: (password) =>
    "at+cmar=\"#{password}\"#{@lineEnding}"

  csms: (service) =>
    if service
      "at+csms=#{service}#{@lineEnding}"
    else
      "at+csms?#{@lineEnding}"

  cpms: (mem1, mem2, mem3) =>
    if mem1 and mem2 and mem3
      "at+cpms=\"#{mem1}\",\"#{mem2}\",\"#{mem3}\"#{@lineEnding}"
    else if mem1 and mem2
      "at+cpms=\"#{mem1}\",\"#{mem2}\"#{@lineEnding}"
    else if mem1
      "at+cpms=\"#{mem1}\"#{@lineEnding}"
    else
      "at+cpms?#{@lineEnding}"

  cmgf: (mode) =>
    if mode
      "at+cmgf=#{mode}#{@lineEnding}"
    else
      "at+cmgf?#{@lineEnding}"

  csca: (sca, type) =>
    if sca and type
      "at+csca=\"#{sca}\",#{type}#{@lineEnding}"
    else if sca
      "at+csca=\"#{sca}\"#{@lineEnding}"
    else
      "at+csca?#{@lineEnding}"

  csmp: (firstOctet, validityPeriodInt, protocolId, dcs) =>
    if firstOctet and validityPeriodInt and protocolId and dcs
      "at+csmp=#{firstOctet},#{validityPeriodInt},#{protocolId},#{dcs}#{@lineEnding}"
    else if firstOctet and validityPeriodInt and protocolId
      "at+csmp=#{firstOctet},#{validityPeriodInt},#{protocolId}#{@lineEnding}"
    else if firstOctet and validityPeriodInt
      "at+csmp=#{firstOctet},#{validityPeriodInt}#{@lineEnding}"
    else if firstOctet
      "at+csmp=#{firstOctet}#{@lineEnding}"
    else
      "at+csmp?#{@lineEnding}"

  csdh: (show) =>
    if show
      "at+csdh=#{show}#{@lineEnding}"
    else
      "at+csdh?#{@lineEnding}"

  cscb: (mode, mids, dcss) =>
    if mode and mids and dcss
      "at+cscb=#{mode},\"#{mids}\",\"#{dcss}\"#{@lineEnding}"
    else if mode and mids
      "at+cscb=#{mode},\"#{mids}\"#{@lineEnding}"
    else if mode
      "at+cscb=#{mode}#{@lineEnding}"
    else
      "at+cscb?#{@lineEnding}"

  csas: (profile) =>
    "at+csas=#{profile}#{@lineEnding}"

  cres: (profile) =>
    "at+cres=#{profile}#{@lineEnding}"

  cgdcont: (cid, type, apn, pdpaddr, dcomp, hcomp, pd1, pd2, pd3, pd4) =>
    if cid and type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2 and pd3 and pd4
      "at+cgdcont=#{cid},\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\",\"#{pd3}\",\"#{pd4}\"#{@lineEnding}"
    else if cid and type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2 and pd3
      "at+cgdcont=#{cid},\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\",\"#{pd3}\"#{@lineEnding}"
    else if cid and type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2
      "at+cgdcont=#{cid},\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\"#{@lineEnding}"
    else if cid and type and apn and pdpaddr and dcomp and hcomp and pd1
      "at+cgdcont=#{cid},\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\"#{@lineEnding}"
    else if cid and type and apn and pdpaddr and dcomp and hcomp
      "at+cgdcont=#{cid},\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp}#{@lineEnding}"
    else if cid and type and apn and pdpaddr and dcomp
      "at+cgdcont=#{cid},\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp}#{@lineEnding}"
    else if cid and type and apn and pdpaddr
      "at+cgdcont=#{cid},\"#{type}\",\"#{apn}\",\"#{pdpaddr}\"#{@lineEnding}"
    else if cid and type and apn
      "at+cgdcont=#{cid},\"#{type}\",\"#{apn}\"#{@lineEnding}"
    else if cid and type
      "at+cgdcont=#{cid},\"#{type}\"#{@lineEnding}"
    else if cid
      "at+cgdcont=#{cid}#{@lineEnding}"
    else
      "at+cgdcont?#{@lineEnding}"

  cgdscont: (cid, pcid, dcomp, hcomp) =>
    if cid and pcid and dcomp and hcomp
      "at+cgdscont=#{cid},#{pcid},#{dcomp},#{hcomp}#{@lineEnding}"
    else if cid and pcid and dcomp
      "at+cgdscont=#{cid},#{pcid},#{dcomp}#{@lineEnding}"
    else if cid and pcid
      "at+cgdscont=#{cid},#{pcid}#{@lineEnding}"
    else if cid
      "at+cgdscont=#{cid}#{@lineEnding}"
    else
      "at+cgdscont?#{@lineEnding}"

  cgactt: (state, type) =>
    if state and type
      "at+cgactt=#{state},#{type}#{@lineEnding}"
    else if state
      "at+cgactt=#{state}#{@lineEnding}"
    else
      "at+cgactt?#{@lineEnding}"

  cgact: (state, cid) =>
    if state and cid
      "at+cgact=#{state},#{cid}#{@lineEnding}"
    else if state
      "at+cgact=#{state}#{@lineEnding}"
    else
      "at+cgact?#{@lineEnding}"

  cgcmod: (cid) =>
    if cid
      "at+cgcmod=#{cid}#{@lineEnding}"
    else
      "at+cgcmod#{@lineEnding}"

  cgdata: (cid, type) =>
    if cid and type
      "at+cgdata=#{cid},\"#{type}\"#{@lineEnding}"
    else if cid
      "at+cgdata=#{cid}#{@lineEnding}"
    else
      "at+cgdata?#{@lineEnding}"

  cgpaddr: (cid) =>
    if cid
      "at+cgpaddr=#{cid}#{@lineEnding}"
    else
      "at+cgpaddr?#{@lineEnding}"

  cgclass: (mtclass) =>
    if mtclass
      "at+cgclass=\"#{mtclass}\"#{@lineEnding}"
    else
      "at+cgclass?#{@lineEnding}"

  cgreg: (reporting) =>
    if reporting
      "at+cgreg=#{reporting}#{@lineEnding}"
    else
      "at+cgreg?#{@lineEnding}"

  cgsms: (service) =>
    if service
      "at+cgsms=#{service}#{@lineEnding}"
    else
      "at+cgsms?#{@lineEnding}"

  iclck: (facility, mode) =>
    "at_iclck=\"#{facility}\",#{mode},\"#{@password}\"#{@lineEnding}"

  icpwd: (facility, newPassword) =>
    @password = newPassword
    "at_icpwd=\"#{facility}\",#{@password},\"#{newPassword}\"#{@lineEnding}"

  ipoint: =>
    "at_ipoint?#{@lineEnding}"

  igps: =>
    "at_igps?#{@lineEnding}"

  inis: (subsystem) =>
    "at_inis=\"#{subsystem}\"#{@lineEnding}"

  ilog: (file, lines, offset) =>
    "at_ilog=\"#{file}\",#{lines},0,#{offset}#{@lineEnding}"

  isleep: =>
    "at_isleep?#{@lineEnding}"

  isig: =>
    "at_isig#{@lineEnding}"

  ibalarm: (reporting) =>
    if reporting
      "at_ibalarm=#{reporting}#{@lineEnding}"
    else
      "at_ibalarm?#{@lineEnding}"

  isatinfo: =>
    "at_isatinfo#{@lineEnding}"

  isatvis: =>
    "at_isatvis#{@lineEnding}"

  isatcur: =>
    "at_isatcur?#{@lineEnding}"

  ibnotify: (command, status) =>
    "at_ibnotify=\"#{command}\",#{status}#{@lineEnding}"

  igetfw: (mode, serverip, serveruname, serverpw, apnname, apnuname, apnpw) =>
    if mode and serverip and serveruname and serverpw and apnname and apnuname and apnpw
      "at_igetfw=#{mode},\"#{serverip}\",\"#{serveruname}\",\"#{serverpw}\",\"#{apnname}\",\"#{apnuname}\",\"#{apnpw}\"#{@lineEnding}"
    else
      "at_igetfw?#{@lineEnding}"

  iupdfw: (file) =>
    "at_iupdfw=\"#{file}\"#{@lineEnding}"

  isendfile: (localdir, file, remotedir, remoteip, username, password) =>
    "at_isendfile=\"#{localdir}\",\"#{file}\",\"#{remotedir}\",\"#{remoteip}\",\"#{username}\",\"#{password}\"#{@lineEnding}"

  igetfile: (remotedir, file, localdir, serverip, username, password, apnname, apnuname, apnpassword) =>
    if remotedir and file and localdir and serverip and username and password and apnname and apnuname and apnpassword
      "at_igetfile=\"#{remotedir}\",\"#{file}\",\"#{localdir}\",\"#{serverip}\",\"#{username}\",\"#{password}\",\"#{apnname}\",\"#{apnuname}\",\"#{apnpassword}\"#{@lineEnding}"
    else if remotedir and file and localdir and serverip and username and password and apnname
      "at_igetfile=\"#{remotedir}\",\"#{file}\",\"#{localdir}\",\"#{serverip}\",\"#{username}\",\"#{password}\",\"#{apnname}\"#{@lineEnding}"
    else if remotedir and file and localdir and serverip and username and password
      "at_igetfile=\"#{remotedir}\",\"#{file}\",\"#{localdir}\",\"#{serverip}\",\"#{username}\",\"#{password}\"#{@lineEnding}"
    else
      "at_igetfile?#{@lineEnding}"

  iupdcfg: (file) =>
    "at_iupdcfg=\"#{file}\"#{@lineEnding}"

  iremweb: (enable, clientlo, clienthi) =>
    if enable and clientlo and clienthi
      "at_iremweb=#{enable},\"#{clientlo}\",\"#{clienthi}\"#{@lineEnding}"
    else if enable and clientlo
      "at_iremweb=#{enable},\"#{clientlo}\"#{@lineEnding}"
    else
      "at_iremweb?#{@lineEnding}"

  iatcscn: =>
    "at_iatcscn#{@lineEnding}"

  iatcrobst: (status) =>
    if status
      "at_iatcrobst=#{status}#{@lineEnding}"
    else
      "at_iatcrobst?#{@lineEnding}"

  ihinit: (subsystem, status) =>
    if subsystem and status
      "at_ihinit=\"#{subsystem}\",#{status}#{@lineEnding}"
    else if subsystem
      "at_ihinit=\"#{subsystem}\"#{@lineEnding}"
    else
      "at_ihinit?#{@lineEnding}"

  ihip: (subsystem, value) =>
    if subsystem and value
      "at_ihip=\"#{subsystem}\",\"#{value}\"#{@lineEnding}"
    else if subsystem
      "at_ihip=\"#{subsystem}\"#{@lineEnding}"
    else
      "at_ihip?#{@lineEnding}"

  ihstatus: (subsystem) =>
    if subsystem
      "at_ihstatus=\"#{subsystem}\"#{@lineEnding}"
    else
      "at_ihstatus?#{@lineEnding}"

  ihset: (subsystem, value) =>
    if subsystem and value
      "at_ihset=\"#{subsystem}\",\"#{value}\"#{@lineEnding}"
    else if subsystem
      "at_ihset=\"#{subsystem}\"#{@lineEnding}"
    else
      "at_ihset?#{@lineEnding}"

  ihdefcnt: (type, apn, pdpaddr, dcomp, hcomp, pd1, pd2, pd3, pd4, traffic, maxbrul, maxbrdl, guarbrul, guarbrdl) =>
    if type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2 and pd3 and pd4 and traffic and maxbrul and maxbrdl and guarbrul and guarbrdl
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\",\"#{pd3}\",\"#{pd4}\",#{traffic},#{maxbrul},#{maxbrdl},#{guarbrul},#{guarbrdl}#{@lineEnding}"
    else if type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2 and pd3 and pd4 and traffic and maxbrul and maxbrdl and guarbrul
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\",\"#{pd3}\",\"#{pd4}\",#{traffic},#{maxbrul},#{maxbrdl},#{guarbrul}#{@lineEnding}"
    else if type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2 and pd3 and pd4 and traffic and maxbrul and maxbrdl
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\",\"#{pd3}\",\"#{pd4}\",#{traffic},#{maxbrul},#{maxbrdl}#{@lineEnding}"
    else if type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2 and pd3 and pd4 and traffic and maxbrul
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\",\"#{pd3}\",\"#{pd4}\",#{traffic},#{maxbrul}#{@lineEnding}"
    else if type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2 and pd3 and pd4 and traffic
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\",\"#{pd3}\",\"#{pd4}\",#{traffic}#{@lineEnding}"
    else if type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2 and pd3 and pd4
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\",\"#{pd3}\",\"#{pd4}\"#{@lineEnding}"
    else if type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2 and pd3
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\",\"#{pd3}\"#{@lineEnding}"
    else if type and apn and pdpaddr and dcomp and hcomp and pd1 and pd2
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\",\"#{pd2}\"#{@lineEnding}"
    else if type and apn and pdpaddr and dcomp and hcomp and pd1
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp},\"#{pd1}\"#{@lineEnding}"
    else if type and apn and pdpaddr and dcomp and hcomp
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp},#{hcomp}#{@lineEnding}"
    else if type and apn and pdpaddr and dcomp
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\",#{dcomp}#{@lineEnding}"
    else if type and apn and pdpaddr
      "at_ihdefcnt=\"#{type}\",\"#{apn}\",\"#{pdpaddr}\"#{@lineEnding}"
    else if type and apn
      "at_ihdefcnt=\"#{type}\",\"#{apn}\"#{@lineEnding}"
    else if type
      "at_ihdefcnt=\"#{type}\"#{@lineEnding}"
    else
      "at_ihdefcnt?#{@lineEnding}"

  ihaca: (acaid, enable, loip, hiip, qos, apn, username, password, alwayson) =>
    if acaid and enable and loip and hiip and qos and apn and username and password and alwayson
      "at_ihaca=#{acaid},#{enable},\"#{loip}\",\"#{hiip}\",#{qos},\"#{apn}\",\"#{username}\",\"#{password}\",#{alwayson}#{@lineEnding}"
    else if acaid and enable and loip and hiip and qos and apn and username and password
      "at_ihaca=#{acaid},#{enable},\"#{loip}\",\"#{hiip}\",#{qos},\"#{apn}\",\"#{username}\",\"#{password}\"#{@lineEnding}"
    else if acaid and enable and loip and hiip and qos and apn and username
      "at_ihaca=#{acaid},#{enable},\"#{loip}\",\"#{hiip}\",#{qos},\"#{apn}\",\"#{username}\"#{@lineEnding}"
    else if acaid and enable and loip and hiip and qos and apn
      "at_ihaca=#{acaid},#{enable},\"#{loip}\",\"#{hiip}\",#{qos},\"#{apn}\"#{@lineEnding}"
    else if acaid and enable and loip and hiip and qos
      "at_ihaca=#{acaid},#{enable},\"#{loip}\",\"#{hiip}\",#{qos}#{@lineEnding}"
    else if acaid and enable and loip and hiip
      "at_ihaca=#{acaid},#{enable},\"#{loip}\",\"#{hiip}\"#{@lineEnding}"
    else if acaid and enable
      "at_ihaca=#{acaid},#{enable}#{@lineEnding}"
    else
      "at_ihaca?#{@lineEnding}"

  ihtm: (enable) =>
    if enable
      "at_ihtm=#{enable}#{@lineEnding}"
    else
      "at_ihtm?#{@lineEnding}"

  ihtxcw: (freq, offset, backoff) =>
    if freq and offset and backoff
      "at_ihtxcw=#{freq},#{offset},#{backoff}#{@lineEnding}"
    else if freq and offset
      "at_ihtxcw=#{freq},#{offset}#{@lineEnding}"
    else
      "at_ihtxcw?#{@lineEnding}"

  ihstxcw: =>
    "at_ihstxcw#{@lineEnding}"

  ihtxmod: (freq, offset, bearer, coding, delay, ts, backoff) =>
    if freq and offset and bearer and coding and delay and ts and backoff
      "at_ihtxmod=#{freq},#{offset},#{bearer},#{coding},#{delay},#{ts},#{backoff}#{@lineEnding}"
    else
      "at_ihtxmod?#{@lineEnding}"

  ihstxmod: =>
    "at_ihstxmod#{@lineEnding}"

  ihgfacq: (freq, offset) =>
    "at_ihgfacq=#{freq},#{offset}#{@lineEnding}"

  ihsigacq: =>
    "at_ihsigacq?#{@lineEnding}"

  ihgps: (latdeg, latmin, latsense, londeg, lonmin, lonsense, time, fix, alt, altsense, nos, hdop) =>
    if latdeg and latmin and latsense and londeg and lonmin and lonsense and time and fix and alt and altsense and nos and hdop
      "at_ihgps=#{latdeg},#{latmin},#{latsense},#{londeg},#{lonmin},#{lonsense},\"#{time}\",#{fix},#{alt},#{altsense},#{nos},#{hdop}#{@lineEnding}"
    else if latdeg and latmin and latsense and londeg and lonmin and lonsense and time
      "at_ihgps=#{latdeg},#{latmin},#{latsense},#{londeg},#{lonmin},#{lonsense},\"#{time}\"#{@lineEnding}"

  ihreboot: =>
    "at_ihreboot#{@lineEnding}"

  ihccal: (freq, backoff, pwrsense, commit) =>
    if freq and backoff and pwrsense and commit
      "at_ihccal=#{freq},#{backoff},#{pwrsense},#{commit}#{@lineEnding}"
    else
      "at_ihccal?#{@lineEnding}"

  ihswupg: (module) =>
    "at_ihswupg=\"#{module}\"#{@lineEnding}"

  ihswdata: (module, block) =>
    "at_ihswdata=\"#{module}\",#{block}#{@lineEnding}"

  ihlog: (logline) =>
    "at_ihlog=\"#{logline}\"#{@lineEnding}"

  ihpin: =>
    "at_ihpin?#{@lineEnding}"

  ihpacket: (cid) =>
    "at_ihpacket=#{cid}#{@lineEnding}"

  ihsms: =>
    "at_ihsms?#{@lineEnding}"

  ihtimer: (func, timeout) =>
    if func and timeout
      "at_ihtimer=\"#{func}\",#{timeout}#{@lineEnding}"
    else if func
      "at_ihtimer=\"#{func}\"#{@lineEnding}"
    else
      "at_ihtimer?#{@lineEnding}"

  iharp: =>
    "at_iharp?#{@lineEnding}"

  ihcircuit: =>
    "at_ihcircuit?#{@lineEnding}"

  ihread: (subsystem) =>
    if subsystem
      "at_ihread=\"#{subsystem}\"#{@lineEnding}"
    else
      "at_ihread?#{@lineEnding}"

  ihgf: =>
    "at_ihgf#{@lineEnding}"

  ihbeam: =>
    "at_ihbeam?#{@lineEnding}"

  ihpbit: (subsystem) =>
    if subsystem
      "at_ihpbit=\"#{subsystem}\"#{@lineEnding}"
    else
      "at_ihpbit=\"all\"#{@lineEnding}"

  ihtemp: =>
    "at_ihtemp=\"vr\"#{@lineEnding}"
