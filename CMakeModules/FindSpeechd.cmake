# this is for emacs file handling -*- mode: cmake; indent-tabs-mode: nil -*-

# -- BEGIN LICENSE BLOCK ----------------------------------------------
# Copyright (c) 2017, FZI Forschungszentrum Informatik
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# -- END LICENSE BLOCK ------------------------------------------------

# - Try to find libspeechd-dev
# Once done this will define
#  Speechd_FOUND - System has libspeechd
#  Speechd_INCLUDE_DIRS - The libspeechd include directories
#  Speechd_LIBRARIES - link these to use libspeechd

include(PrintLibraryStatus)
include(LibFindMacros)


find_path(speechd_INCLUDE_DIR
  NAMES libspeechd.h
  PATHS "/usr/include"
)

find_library(speechd_LIBRARY
  NAMES libspeechd.so
  PATHS "/usr/lib" "/usr/local/lib"
)


set(speechd_PROCESS_INCLUDES speechd_INCLUDE_DIR)
set(speechd_PROCESS_LIBS speechd_LIBRARY)
libfind_process(speechd)


PRINT_LIBRARY_STATUS(speechd
  DETAILS "[${speechd_LIBRARIES}][${speechd_INCLUDE_DIRS}]"
)

