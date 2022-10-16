<jsp:include page="./components/header.jsp"/>

<div class="min-h-full flex py-5">
    <div class="flex-1 flex flex-col justify-center py-12 px-4 sm:px-6 lg:flex-none lg:px-20 xl:px-24">
        <div class="mx-auto w-full max-w-sm lg:w-96">
            <div class="text-blue-900">
                <svg
                        class="h-8"
                        viewBox="0 0 28 24"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                >
                    <path
                            d="M0.41 10.3847C1.14777 7.4194 2.85643 4.7861 5.2639 2.90424C7.6714 1.02234 10.6393 0 13.695 0C16.7507 0 19.7186 1.02234 22.1261 2.90424C24.5336 4.7861 26.2422 7.4194 26.98 10.3847H25.78C23.7557 10.3549 21.7729 10.9599 20.11 12.1147C20.014 12.1842 19.9138 12.2477 19.81 12.3047H19.67C19.5662 12.2477 19.466 12.1842 19.37 12.1147C17.6924 10.9866 15.7166 10.3841 13.695 10.3841C11.6734 10.3841 9.6976 10.9866 8.02 12.1147C7.924 12.1842 7.8238 12.2477 7.72 12.3047H7.58C7.4762 12.2477 7.376 12.1842 7.28 12.1147C5.6171 10.9599 3.6343 10.3549 1.61 10.3847H0.41ZM23.62 16.6547C24.236 16.175 24.9995 15.924 25.78 15.9447H27.39V12.7347H25.78C24.4052 12.7181 23.0619 13.146 21.95 13.9547C21.3243 14.416 20.5674 14.6649 19.79 14.6649C19.0126 14.6649 18.2557 14.416 17.63 13.9547C16.4899 13.1611 15.1341 12.7356 13.745 12.7356C12.3559 12.7356 11.0001 13.1611 9.86 13.9547C9.2343 14.416 8.4774 14.6649 7.7 14.6649C6.9226 14.6649 6.1657 14.416 5.54 13.9547C4.4144 13.1356 3.0518 12.7072 1.66 12.7347H0V15.9447H1.61C2.39051 15.924 3.154 16.175 3.77 16.6547C4.908 17.4489 6.2623 17.8747 7.65 17.8747C9.0377 17.8747 10.392 17.4489 11.53 16.6547C12.1468 16.1765 12.9097 15.9257 13.69 15.9447C14.4708 15.9223 15.2348 16.1735 15.85 16.6547C16.9901 17.4484 18.3459 17.8738 19.735 17.8738C21.1241 17.8738 22.4799 17.4484 23.62 16.6547ZM23.62 22.3947C24.236 21.915 24.9995 21.664 25.78 21.6847H27.39V18.4747H25.78C24.4052 18.4581 23.0619 18.886 21.95 19.6947C21.3243 20.156 20.5674 20.4049 19.79 20.4049C19.0126 20.4049 18.2557 20.156 17.63 19.6947C16.4899 18.9011 15.1341 18.4757 13.745 18.4757C12.3559 18.4757 11.0001 18.9011 9.86 19.6947C9.2343 20.156 8.4774 20.4049 7.7 20.4049C6.9226 20.4049 6.1657 20.156 5.54 19.6947C4.4144 18.8757 3.0518 18.4472 1.66 18.4747H0V21.6847H1.61C2.39051 21.664 3.154 21.915 3.77 22.3947C4.908 23.1889 6.2623 23.6147 7.65 23.6147C9.0377 23.6147 10.392 23.1889 11.53 22.3947C12.1468 21.9165 12.9097 21.6657 13.69 21.6847C14.4708 21.6623 15.2348 21.9135 15.85 22.3947C16.9901 23.1884 18.3459 23.6138 19.735 23.6138C21.1241 23.6138 22.4799 23.1884 23.62 22.3947Z"
                            fill="currentColor"
                    />
                </svg>                <h2 class="mt-4 text-3xl font-extrabold text-gray-900">Find a cheap flight</h2>
                <p class="mt-2 text-sm text-gray-600">
                    <a href="#" class="font-medium text-blue-800 hover:text-blue-900"> Let MarocAir search for you</a>
                </p>
            </div>

            <div class="mt-8" x-data="{ open: true }">
                <div>
                    <!----------------------------------------------------------------------------------------------------------->
                    <form action="#" method="POST" class="space-y-6">
                    <div class="flex gap-2">
                        <div class="w-1/2">
                            <!-----<label for="depart" class="block text-sm font-medium text-gray-700">Location</label>-->
                            <select id="depart" name="location" class="tracking-widest font-medium mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm rounded-md">
                                <option  selected disabled>From...</option>
                                <option>United States</option>
                                <option >Canada</option>
                                <option>Mexico</option>
                            </select>
                        </div>
                        <div class="w-1/2">
                            <!-----<label for="arrive" class="block text-sm font-medium text-gray-700">Location</label>--->
                            <select id="arrive" name="location" class="tracking-widest font-medium mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm rounded-md">
                                <option selected disabled>To...</option>
                                <option>United States</option>
                                <option>Canada</option>
                                <option>Mexico</option>
                            </select>
                        </div>
                    </div>





                    <div class="-mx-3 mt-6 mb-4 flex flex-wrap" x-show="open">
                        <div class="w-full px-3">
                            <label class="mb-2 block text-xs font-bold uppercase tracking-wide text-gray-700" for="grid-password"> Departing </label>
                            <input class="mb-3 block w-full appearance-none rounded border border-gray-200 py-3 px-4 leading-tight text-gray-700 focus:border-gray-500 focus:bg-white focus:outline-none" id="grid-password" type="date" />
                        </div>
                    </div>



                    <!----------------------------------------------------------------------------------------------------------->
                    <div class="mt-6 mb-8">
                        <button type="submit" class="w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-gradient-to-r from-sky-700 to-blue-800 hover:bg-blue-900 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">search</button>
                    </div>
                    <div class="mt-6 mb-20 relative">
                        <div class="absolute inset-0 flex items-center" aria-hidden="true">
                            <div class="w-full border-t border-gray-300"></div>
                        </div>
                        <div class="relative flex justify-center text-sm">
                            <span class="px-2 bg-white text-gray-500"> Our partners </span>
                        </div>
                    </div>
                    </div>
                <div class="w-full grid grid-cols-4 gap-4 ">
                    <img  src="https://content.r9cdn.net/rimg/provider-logos/airlines/h/IB.png?crop=false&width=166&height=62&fallback=default2.png&_v=db050a119841ae09811f1d39492807db">
                    <img  src="https://content.r9cdn.net/rimg/provider-logos/airlines/h/TO.png?crop=false&width=166&height=62&fallback=default2.png&_v=f798fd1835ca14168e70ec5740b4c816">
                    <img  src="https://content.r9cdn.net/rimg/provider-logos/airlines/h/UX.png?crop=false&width=166&height=62&fallback=default3.png&_v=6bc6a2b47935895a0f2208c31ad85568">
                    <img  src="https://content.r9cdn.net/rimg/provider-logos/airlines/h/U2.png?crop=false&width=166&height=62&fallback=default1.png&_v=0044409602fdb20866a93225d754c0ad">
                    <img  src="https://content.r9cdn.net/rimg/provider-logos/airlines/h/W6.png?crop=false&width=166&height=62&fallback=default1.png&_v=f374a6879c147b2624f4e9185e96b167">
                    <img  src="https://content.r9cdn.net/rimg/provider-logos/airlines/h/VY.png?crop=false&width=166&height=62&fallback=default2.png&_v=0583352b916cd4b8a65176f68b99c8a9">
                    <img  src="https://content.r9cdn.net/rimg/provider-logos/airlines/h/AT.png?crop=false&width=166&height=62&fallback=default3.png&_v=c6c2c006ac2ce3a0c4290ebbe883a612">
                    <img  src="https://content.r9cdn.net/rimg/provider-logos/airlines/h/FR.png?crop=false&width=166&height=62&fallback=default3.png&_v=d6743c93799a0874be2fea206e8fc627">
                </div>
                <div class="mt-6">

                </div>
            </div>
        </div>
    </div>
    <div class="hidden lg:block relative w-0 flex-1">
        <img class="absolute p-10 inset-0 h-full w-full object-full" src="https://images.pexels.com/photos/1831271/pexels-photo-1831271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="">
    </div>
</div>

<jsp:include page="./components/footer.jsp"/>
