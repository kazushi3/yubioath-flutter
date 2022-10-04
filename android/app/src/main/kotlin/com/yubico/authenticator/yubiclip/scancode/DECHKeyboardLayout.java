/*
 * Copyright (C) 2022 Yubico.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.yubico.authenticator.yubiclip.scancode;

/**
 * Created by mjenny on 7/12/15.
 */
public class DECHKeyboardLayout extends KeyboardLayout {
        private static final String[] usb2key1 = new String[]{
                "",
                "",
                "",
                "",
                "a",
                "b",
                "c",
                "d",
                "e",
                "f",
                "g", /* 0xa */
                "h",
                "i",
                "j",
                "k",
                "l",
                "m",
                "n",
                "o",
                "p",
                "q", /* 0x14 */
                "r",
                "s",
                "t",
                "u",
                "v",
                "w",
                "x",
                "z",
                "y",
                "1", /* 0x1e */
                "2",
                "3",
                "4",
                "5",
                "6",
                "7",
                "8",
                "9",
                "0",
                "\n", /* 0x28 */
                "",
                "",
                "\t",
                " ",
                "'",
                "^",
                "ü",
                "¨",
                "",
                "$",
                "ö",
                "ä",
                "§",
                ",",
                ".",
                "-", /* 0x38 */
        };
        private static final String[] usb2key2 = new String[]{
                "",
                "",
                "",
                "",
                "A",
                "B",
                "C",
                "D",
                "E",
                "F",
                "G", /* 0x8a */
                "H",
                "I",
                "J",
                "K",
                "L",
                "M",
                "N",
                "O",
                "P",
                "Q", /* 0x94 */
                "R",
                "S",
                "T",
                "U",
                "V",
                "W",
                "X",
                "Z",
                "Y",
                "+",
                "\"",
                "*",
                "ç",
                "%",
                "&",
                "/",
                "(",
                ")",
                "=",
                "",
                "",
                "",
                "",
                "",
                "?",
                "`",
                "è",
                "!",
                "",
                "£",
                "Ö",
                "Ä",
                "°",
                ";",
                ":",
                "_",
        };

        @Override
        protected String fromScanCode(int code) {
                if (code < SHIFT) {
                        if (code < usb2key1.length) {
                                return usb2key1[code];
                        }
                } else {
                        code = code ^ SHIFT;
                        if (code < usb2key2.length) {
                                return usb2key2[code];
                        }
                }

                return "";
        }
}
