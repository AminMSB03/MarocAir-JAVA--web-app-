<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="inc/dashboard.header.jsp" />
<main>
    <div class="mx-auto mb-5 px-4 sm:px-6 md:px-8">
        <h1 class="text-2xl font-semibold text-[#1E70B8]">Dashboard</h1>
    </div>
    <div x-data="{ open : false }" class="grid flex-1 gap-5 px-4 sm:grid-cols-2 sm:px-6 md:grid-cols-2 md:px-8" style="{grid-template-rows:auto 1fr;grid-template-columns:auto 1fr;}">
        <div class="row-span-2 h-fit max-w-lg lg:w-fit">
            <div class="mx-auto max-w-7xl">
                <!-- Replace with your content -->
                <div>
                    <h2 class="mb-5 text-lg font-bold text-[#004374]">Add a Flight</h2>
                    <form class="w-full max-w-lg lg:min-w-[450px]" action="#" method="post">
                        <div class="-mx-3 mb-6 flex flex-wrap">
                            <div class="mb-6 w-full px-3 md:mb-0 md:w-1/2">
                                <label class="mb-2 block text-xs font-bold uppercase tracking-wide text-gray-700" for="directions"> Direction </label>
                                <div class="relative">
                                    <select class="block w-full appearance-none rounded border border-gray-200 bg-gray-200 py-3 px-4 pr-8 leading-tight text-gray-700 focus:border-gray-500 focus:bg-white focus:outline-none" name="direction">
                                        <option value="">Select a direction</option>
                                        <option value="" >Casablanca - Paris</option>
                                        <option>Marrackech - Londres</option>
                                        <option>Agadir - New York</option>
                                        <option>Casablanca - Madrid</option>
                                    </select>
                                    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                                        <svg class="h-4 w-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" /></svg>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full px-3 md:w-1/2">
                                <label class="mb-2 block text-xs font-bold uppercase tracking-wide text-gray-700" for="grid-last-name"> Price </label>
                                <input class="block w-full appearance-none rounded border border-gray-200 bg-gray-200 py-3 px-4 leading-tight text-gray-700 focus:border-gray-500 focus:bg-white focus:outline-none" id="grid-last-name" pattern="[0-9]+(\\.[0-9][0-9]?)?" type="text" placeholder="1211.32" />
                            </div>
                        </div>
                        <div class="-mx-3 mb-4 flex flex-wrap">
                            <div class="w-full px-3">
                                <label class="mb-2 block text-xs font-bold uppercase tracking-wide text-gray-700" for="grid-password"> Date And Time </label>
                                <input class="mb-3 block w-full appearance-none rounded border border-gray-200 bg-gray-200 py-3 px-4 leading-tight text-gray-700 focus:border-gray-500 focus:bg-white focus:outline-none" id="grid-password" type="datetime-local" />
                            </div>
                        </div>
                        <div class="-mx-3 mb-2 flex flex-wrap">
                            <div class="w-full px-3">
                                <input x-on:change.debounce="open = ! open" type="checkbox" id="react-option" value="" class="peer hidden"  />
                                <label for="react-option" class="mb-3 inline-flex w-full cursor-pointer items-center justify-between rounded-lg border-2 border-gray-200 bg-white p-2 text-black hover:bg-gray-50 hover:text-gray-600 peer-checked:border-blue-600 peer-checked:text-gray-600">
                                    <div class="block">
                                        <svg class="w-20" version="1.0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 900.000000 520.000000">
                                            <g transform="translate(-160,520.000000) scale(0.10000,-0.100000)" fill="#000000" stroke="none">
                                                <path
                                                        d="M2440 4854 c-41 -18 -86 -59 -106 -96 -12 -23 -185 -462 -334 -848
                                -28 -74 -54 -158 -57 -186 -37 -360 538 -789 1647 -1231 118 -47 218 -88 222
                                -92 3 -3 -274 -195 -615 -426 -342 -231 -639 -435 -660 -454 -21 -19 -45 -47
                                -53 -62 -20 -40 -18 -108 6 -146 22 -37 40 -47 186 -105 l109 -43 150 0 c93 0
                                171 6 205 14 30 8 372 128 760 268 388 140 823 297 967 349 144 52 267 94 274
                                94 6 0 69 -21 140 -46 l128 -46 -25 -34 c-32 -41 -64 -141 -64 -197 0 -49 20
                                -129 43 -173 26 -51 108 -125 167 -153 47 -22 69 -26 150 -26 85 0 101 3 153
                                29 106 54 178 153 197 273 5 30 11 57 12 59 2 1 68 -17 148 -42 176 -55 428
                                -118 532 -135 43 -6 109 -9 147 -7 88 7 131 32 163 96 33 68 33 234 -1 342
                                -79 255 -280 499 -536 655 -109 66 -200 104 -817 345 -336 132 -615 243 -618
                                247 -4 5 -139 260 -300 568 -161 308 -317 601 -347 652 -65 110 -200 257 -269
                                295 -79 43 -261 108 -302 108 -107 0 -163 -108 -128 -250 123 -514 217 -922
                                212 -927 -5 -5 -884 332 -948 364 -15 7 -32 22 -38 33 -6 10 -33 173 -60 360
                                -56 387 -64 413 -146 490 -96 91 -206 122 -294 84z m165 -249 c25 -32 30 -60
                                75 -373 32 -228 54 -354 67 -383 26 -58 76 -115 122 -139 20 -10 252 -102 516
                                -205 264 -103 554 -216 645 -252 91 -36 338 -132 550 -215 1225 -477 1625
                                -635 1708 -675 296 -144 511 -395 551 -644 6 -33 8 -74 4 -90 -7 -35 -28 -37
                                -154 -13 -241 44 -574 147 -1170 361 l-376 135 -984 -355 c-541 -195 -1011
                                -363 -1044 -373 -86 -25 -263 -26 -327 0 -27 10 -48 22 -48 27 0 8 122 91 890
                                609 190 127 409 275 487 328 107 72 139 98 128 105 -8 4 -148 59 -310 122
                                -710 275 -1151 489 -1452 706 -122 88 -251 215 -295 290 -61 103 -64 91 142
                                620 100 254 183 466 186 470 9 14 61 -19 89 -56z m1403 -175 c67 -34 159 -125
                                215 -213 18 -28 89 -158 156 -287 68 -129 182 -347 253 -483 72 -136 129 -249
                                127 -251 -5 -5 -572 213 -583 224 -5 5 -62 230 -127 502 -65 271 -121 503
                                -124 516 -7 30 9 29 83 -8z m1663 -2723 c19 -8 55 -22 82 -31 77 -29 100 -107
                                55 -187 -57 -102 -211 -100 -264 3 -20 39 -20 107 0 147 13 23 61 66 92 80 1
                                1 17 -5 35 -12z"
                                                />
                                            </g>
                                        </svg>
                                        <div class="w-full text-lg font-semibold">Y a-t-il escale</div>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <template x-if="open" class="mb-4 h-fit max-w-lg rounded-xl border-2 border-solid border-[#1E70B8] p-4 lg:min-w-[450px]">
                            <div class="flex flex-col gap-3">
                                <h2 class="text-md mb-4 font-bold text-[#004374]">Add a stopover</h2>
                                <div class="flex flex-col gap-1 md:flex-row">
                                    <div class="mb-1 w-full md:mb-0">
                                        <div class="relative">
                                            <input type="number" min="1" max="1" value="1" name="nbrEscale" id="nbrEscale" class="block w-full appearance-none rounded border border-gray-200 bg-gray-200 py-3 px-4 pr-8 leading-tight text-gray-700 focus:border-gray-500 focus:bg-white focus:outline-none" placeholder="number of stopovers" />
                                        </div>
                                    </div>
                                </div>
                                <div class="flex flex-col gap-1 md:flex-row">
                                    <div class="mb-1 w-full md:mb-0">
                                        <div class="relative">
                                            <select class="block w-full appearance-none rounded border border-gray-200 bg-gray-200 py-3 px-4 pr-8 leading-tight text-gray-700 focus:border-gray-500 focus:bg-white focus:outline-none" name="from">
                                                <option value="">stopover city</option>
                                                <option value="casablanca">Casablanca</option>
                                                <option>Marrackech</option>
                                                <option>Agadir</option>
                                                <option>Casablanca</option>
                                                <option>Paris</option>
                                                <option>Londres</option>
                                                <option>New York</option>
                                                <option>Madrid</option>
                                            </select>
                                            <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                                                <svg class="h-4 w-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" /></svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </template>
                        <div class="-mx-3 mb-6 flex flex-wrap">
                            <div class="w-full px-3 md:mb-0">
                                <label class="mb-2 block text-xs font-bold uppercase tracking-wide text-gray-700" for="societes"> Societe </label>
                                <div class="relative mb-3">
                                    <select class="block w-full appearance-none rounded border border-gray-200 bg-gray-200 py-3 px-4 pr-8 leading-tight text-gray-700 focus:border-gray-500 focus:bg-white focus:outline-none" id="societes" name="to">
                                        <option value="">Select a Societe</option>
                                        <option>Royal Air Maroc</option>
                                        <option>Gazelle</option>
                                        <option>Fly Emarates</option>
                                    </select>
                                    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                                        <svg class="h-4 w-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" /></svg>
                                    </div>
                                </div>

                                <div class="mb-6 block w-full">
                                    <button class="focus:shadow-outline w-full rounded bg-[#1E70B8] py-2 px-4 font-bold text-white shadow hover:bg-white hover:text-[#1E70B8] border-solid border-2 border-[#1E70B8] focus:outline-none" name="vol" type="submit">Add Flight</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="max-w-lg lg:min-w-[450px]">
            <h2 class="mb-4 text-lg font-bold text-[#004374]">Add a Direction</h2>
            <form class="flex flex-col gap-3" action="dashboard-servlet" method="post">
                <div class="flex flex-col gap-1 md:flex-row">
                    <div class="mb-1 w-full md:mb-0 md:w-1/2">
                        <div class="relative">
                            <select class="block w-full appearance-none rounded border border-gray-200 bg-gray-200 py-3 px-4 pr-8 leading-tight text-gray-700 focus:border-gray-500 focus:bg-white focus:outline-none" id="depart" name="from">
                                <option value="">From</option>
                                <option>Casablanca</option>
                                <option>Marrackech</option>
                                <option>Agadir</option>
                                <option>Casablanca</option>
                                <option>Paris</option>
                                <option>Londres</option>
                                <option>New York</option>
                                <option>Madrid</option>
                            </select>
                            <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                                <svg class="h-4 w-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" /></svg>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3 w-full md:mb-0 md:w-1/2">
                        <div class="relative">
                            <select class="block w-full appearance-none rounded border border-gray-200 bg-gray-200 py-3 px-4 pr-8 leading-tight text-gray-700 focus:border-gray-500 focus:bg-white focus:outline-none" id="arrive" name="to">
                                <option value="">To</option>
                                <option>Casablanca</option>
                                <option>Marrackech</option>
                                <option>Agadir</option>
                                <option>Casablanca</option>
                                <option>Paris</option>
                                <option>Londres</option>
                                <option>New York</option>
                                <option>Madrid</option>
                            </select>
                            <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                                <svg class="h-4 w-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" /></svg>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb-6 block w-full">
                    <button class="focus:shadow-outline w-full rounded bg-[#1E70B8] py-2 px-4 font-bold text-white shadow hover:bg-white hover:text-[#1E70B8] border-solid border-2 border-[#1E70B8] focus:outline-none" name="direction" type="submit">Add</button>
                </div>
            </form>
        </div>
    </div>
</main>
            </div>
        </div>
        <!-- les messages -->
        <c:choose>
            <c:when test="${echo.contains('success')}">
                <div name="msg" class="flex absolute top-5 right-5 items-center p-4 space-x-4 w-full max-w-xs text-white bg-green-300 rounded-lg divide-x divide-gray-200 shadow opacity-90" role="alert">
                    <div class="text-sm font-normal font-bold"><c:out value="${echo}" /></div>
                </div>
            </c:when>
            <c:when test="${echo == null}"></c:when>
            <c:otherwise>
                <div name="msg" class="flex absolute top-5 right-5 items-center p-4 space-x-4 w-full max-w-xs text-white bg-red-300 rounded-lg divide-x divide-gray-200 shadow opacity-90" role="alert">
                    <div class="text-sm font-normal font-bold"><c:out value="${echo}" /></div>
                </div>
            </c:otherwise>
        </c:choose>
    </body>
<script>
    let msg = document.getElementsByName("msg");
    setTimeout(()=>{
        msg.forEach(e => {
            e.remove();
        })
    },5000);
</script>
</html>
