@echo off
setlocal enabledelayedexpansion

rem --- arr1 ---
set arr1=spr_puzzle_image_tu_vien_tren_da_hylap spr_puzzle_image_trung_tam_the_gioi_co_dại_hylap spr_puzzle_image_dao_thoi_thuong_mykonos_hylap spr_puzzle_image_lang_trang_santorini_hy_lap spr_puzzle_image_den_parthenon_athens_hy_lap spr_puzzle_image_dao_bien_hvar_croatia spr_puzzle_image_plitvice_lakes_croatia spr_puzzle_image_cung_dien_diocletian_split_croatia spr_puzzle_image_vien_ngoc_cua_bien_adriatic_croatia

rem --- arr2 ---
set arr2=rsz_1chatgpt_image_21_36_42_1_thg_9_2025 rsz_chatgpt_image_20_59_09_27_thg_8_2025 spr_puzzle_image_dao_bien_hvar_croatia spr_puzzle_image_den_parthenon_athens_hy_lap spr_puzzle_image_lang_trang_santorini_hy_lap spr_puzzle_image_tru_so_toa_an_quoc_te_ha_lan spr_puzzle_image_tu_vien_tren_da_hylap spr_puzzle_image_plitvice_lakes_croatia spr_puzzle_image_vien_ngoc_cua_bien_adriatic_croatia

echo Danh sach chuoi co trong arr1 ma khong co trong arr2:
echo ---------------------------------------------------

for %%A in (%arr1%) do (
    set found=0
    for %%B in (%arr2%) do (
        if "%%A"=="%%B" (
            set found=1
        )
    )
    if !found! == 0 (
        echo %%A
    )
)

endlocal
pause