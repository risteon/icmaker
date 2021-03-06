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

# - Try to find Libwebsockets
# Once done this will define
#  libwebsockets_FOUND - System has Libwebsockets
#  libwebsockets_INCLUDE_DIRS - The Libwebsockets include directories
#  libwebsockets_LIBRARIES - link these to use Libwebsockets

include(PrintLibraryStatus)
include(LibFindMacros)


find_path(libwebsockets_INCLUDE_DIR
  NAMES libwebsockets.h
  PATHS "/usr/share/include"
)

find_library(libwebsockets_LIBRARY
  NAMES libwebsockets.so
  PATHS "/usr/lib" "/usr/local/lib"
)


set(libwebsockets_PROCESS_INCLUDES libwebsockets_INCLUDE_DIR)
set(libwebsockets_PROCESS_LIBS libwebsockets_LIBRARY)
libfind_process(libwebsockets)


PRINT_LIBRARY_STATUS(libwebsockets
  DETAILS "[${libwebsockets_LIBRARIES}][${libwebsockets_INCLUDE_DIRS}]"
)

