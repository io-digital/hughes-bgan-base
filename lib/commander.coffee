
module.exports = class Commander

  constructor: (@password = '', @lineEnding = '\r\n') ->

  echo: (status) =>
    "at e #{status}#{@lineEnding}"

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

  isig: =>
    "at_isig#{@lineEnding}"

  isatinfo: =>
    "at_isatinfo#{@lineEnding}"

  isatvis: =>
    "at_isatvis#{@lineEnding}"

  isatcur: =>
    "at_isatcur?#{@lineEnding}"

  ibnotify: (command, status) =>
    "at_ibnotify=\"#{command}\",#{status}#{@lineEnding}"

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
    else
      "at+cfun?#{@lineEnding}"

  cbc: =>
    "at+cbc#{@lineEnding}"

  cmee: (level) =>
    "at+cmee=#{level}#{@lineEnding}"

  ihinit: (subsystem, status) =>
    if (subsystem and status)
      "at_ihinit=\"#{subsystem}\",#{status}#{@lineEnding}"
    else if (subsystem and not status)
      "at_ihinit=\"#{subsystem}\"#{@lineEnding}"
    else
      "at_ihinit?#{@lineEnding}"

  ihip: (subsystem) =>
    if (subsystem)
      "at_ihip=\"#{subsystem}\"#{@lineEnding}"
    else
      "at_ihip?#{@lineEnding}"

  ihstatus: (subsystem) =>
    if subsystem
      "at_ihstatus=\"#{subsystem}\"#{@lineEnding}"
    else
      "at_ihstatus?#{@lineEnding}"

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
