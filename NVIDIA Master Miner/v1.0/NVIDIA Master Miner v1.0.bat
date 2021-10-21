:: NVIDIA Master Miner v1.0 Config File
:: https://github.com/trexminer/T-Rex

:: Wasym Atieh Alonso
:: https://www.youtube.com/channel/UCjU20xg8Hv3sycHRXH5Kjng
:: https://github.com/iWas-Coder/wasymatieh


echo off
cls

:master_menu
	echo off
	cls

	echo.
	echo ...............................................
	echo PRESS 1, 2, 3 OR 4 to select your miner, or 5 to EXIT.
	echo ...............................................
	echo.
	echo 1 - Nicehash ETH NVIDIA Miner
	echo 2 - ETH NVIDIA Miner
	echo 3 - ETC NVIDIA Miner
	echo 4 - RVN NVIDIA Miner
	echo 5 - EXIT
	echo.

	set /P M=Type 1,2,3,4 or 5 then press ENTER: 
	if %M%==1 goto nicehash_eth
	if %M%==2 goto pool_eth
	if %M%==3 goto pool_etc
	if %M%==4 goto pool_rvn
	if %M%==5 goto EOF


:nicehash_eth
	echo off
	cls

	echo.
	echo ...............................................
	echo PRESS 1 OR 2 to select your mining intensity, or 3 to EXIT.
	echo ...............................................
	echo.
	echo 1 - Nicehash ETH Light Mining (intensity=10, ~70W)
	echo 2 - Nicehash ETH Normal Mining (intensity=16, ~100W)
	echo 3 - EXIT
	echo.

	set /P M=Type 1,2, or 3 then press ENTER: 
	if %M%==1 goto light_mining_1
	if %M%==2 goto normal_mining_1
	if %M%==3 goto master_menu

	:light_mining_1
	C:\"Program Files (x86)"\"T-Rex NVIDIA Miner"\t-rex.exe -a ethash --coin eth -i 10 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+tcp://daggerhashimoto.eu-west.nicehash.com:3353 -u 34douYJySifha8N9yJUwAM8aV59sP8R1Vo -p x -w SPARKY --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto nicehash_eth

	:normal_mining_1
	C:\"Program Files (x86)"\"T-Rex NVIDIA Miner"\t-rex.exe -a ethash --coin eth -i 16 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+tcp://daggerhashimoto.eu-west.nicehash.com:3353 -u 34douYJySifha8N9yJUwAM8aV59sP8R1Vo -p x -w SPARKY --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto nicehash_eth

goto master_menu


:pool_eth
	echo off
	cls

	echo.
	echo ...............................................
	echo PRESS 1 OR 2 to select your mining intensity, or 3 to EXIT.
	echo ...............................................
	echo.
	echo 1 - ETH Light Mining (intensity=10, ~70W)
	echo 2 - ETH Normal Mining (intensity=18, ~100W)
	echo 3 - EXIT
	echo.

	set /P M=Type 1,2, or 3 then press ENTER: 
	if %M%==1 goto light_mining_2
	if %M%==2 goto normal_mining_2
	if %M%==3 goto master_menu

	:light_mining_2
	C:\"Program Files (x86)"\"T-Rex NVIDIA Miner"\t-rex.exe -a ethash --coin eth -i 10 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://eu1.ethermine.org:5555 -u 0xBC9648Af8f9c69b26EDf7a6c5298CF032dF41EA4 -p x -w SPARKY --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_eth

	:normal_mining_2
	C:\"Program Files (x86)"\"T-Rex NVIDIA Miner"\t-rex.exe -a ethash --coin eth -i 16 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://eu1.ethermine.org:5555 -u 0xBC9648Af8f9c69b26EDf7a6c5298CF032dF41EA4 -p x -w SPARKY --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_eth

goto master_menu


:pool_etc
	echo off
	cls

	echo.
	echo ...............................................
	echo PRESS 1 OR 2 to select your mining intensity, or 3 to EXIT.
	echo ...............................................
	echo.
	echo 1 - ETC Light Mining (intensity=10, ~70W)
	echo 2 - ETC Normal Mining (intensity=18, ~100W)
	echo 3 - EXIT
	echo.

	set /P M=Type 1,2, or 3 then press ENTER: 
	if %M%==1 goto light_mining_3
	if %M%==2 goto normal_mining_3
	if %M%==3 goto master_menu

	:light_mining_3
	C:\"Program Files (x86)"\"T-Rex NVIDIA Miner"\t-rex.exe -a etchash --coin etc -i 10 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://eu1-etc.ethermine.org:5555 -u 0xbAdC082151ecEa6cD27679a8010De00017c9a31C -p x -w SPARKY --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_etc

	:normal_mining_3
	C:\"Program Files (x86)"\"T-Rex NVIDIA Miner"\t-rex.exe -a etchash --coin etc -i 16 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://eu1-etc.ethermine.org:5555 -u 0xbAdC082151ecEa6cD27679a8010De00017c9a31C -p x -w SPARKY --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_etc

goto master_menu


:pool_rvn
	echo off
	cls

	echo.
	echo ...............................................
	echo PRESS 1 OR 2 to select your mining intensity, or 3 to EXIT.
	echo ...............................................
	echo.
	echo 1 - RVN Light Mining (intensity=10, ~50W)
	echo 2 - RVN Normal Mining (intensity=18, ~130W)
	echo 3 - EXIT
	echo.

	set /P M=Type 1,2, or 3 then press ENTER: 
	if %M%==1 goto light_mining_4
	if %M%==2 goto normal_mining_4
	if %M%==3 goto master_menu

	:light_mining_4
	C:\"Program Files (x86)"\"T-Rex NVIDIA Miner"\t-rex.exe -a kawpow --coin rvn -i 10 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://stratum-ravencoin.flypool.org:3443 -u r9S12NQEkdNaCH4BKwJtfuZnHe85kQ21xd -p 0.1 -w SPARKY --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_rvn

	:normal_mining_4
	C:\"Program Files (x86)"\"T-Rex NVIDIA Miner"\t-rex.exe -a kawpow --coin rvn -i 16 --low-load 1 --kernel 0 --keep-gpu-busy --cpu-priority 0 -o stratum+ssl://stratum-ravencoin.flypool.org:3443 -u r9S12NQEkdNaCH4BKwJtfuZnHe85kQ21xd -p 0.1 -w SPARKY --api-key bwAAAAAAAABLJhYYYNiD7cNJSiQsCHN0IAIUUsnPTy3nxMY1R798AshysYIMdvyx3OJ9v2Z/uoXSqje+nMYK14um599nlYGqKJ1OJXSAkHI=
	goto pool_rvn

goto master_menu