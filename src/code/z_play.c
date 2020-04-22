#include <ultra64.h>
#include <global.h>
#include <vt.h>

void* D_8012D1F0 = NULL;
UNK_TYPE D_8012D1F4 = 0; // unused
Input* D_8012D1F8 = NULL;

TransitionStruct D_801613B0;
s32 D_80161490;
VisMonoStruct D_80161498;
Color_RGBA8 D_801614B0;
FaultClient D_801614B8;
s16 D_801614C8;
u64 D_801614D0[0xA00];

void func_800BC450(GlobalContext* globalCtx) {
    func_8005A7A8(globalCtx->cameraPtrs[globalCtx->activeCamera], globalCtx->unk_1242B - 1);
}

void func_800BC490(GlobalContext* globalCtx, s16 point) {
    if (!(point == 1 || point == 2)) {
        __assert("point == 1 || point == 2", "../z_play.c", 2160);
    }

    globalCtx->unk_1242B = point;

    if ((YREG(15) != 0x10) && (gSaveContext.cutsceneIndex < 0xFFF0)) {
        Audio_PlaySoundGeneral((point == 1) ? NA_SE_SY_CAMERA_ZOOM_DOWN : NA_SE_SY_CAMERA_ZOOM_UP, &D_801333D4, 4,
                               &D_801333E0, &D_801333E0, &D_801333E8);
    }

    func_800BC450(globalCtx);
}

s32 func_800BC56C(GlobalContext* globalCtx, s16 arg1) {
    return (arg1 == globalCtx->unk_1242B);
}

// original name: "Game_play_shop_pr_vr_switch_set"
void func_800BC590(GlobalContext* globalCtx) {
    osSyncPrintf("Game_play_shop_pr_vr_switch_set()\n");

    if (YREG(15) == 0x10) {
        globalCtx->unk_1242B = 2;
    }
}

#ifdef NON_MATCHING
// single minor ordering difference
void func_800BC5E0(GlobalContext* globalCtx, s32 arg1) {
    TransitionContext* transitionCtx = &globalCtx->transitionCtx;

    bzero(transitionCtx, sizeof(TransitionContext));

    transitionCtx->unk_228 = arg1;

    if ((transitionCtx->unk_228 >> 5) == 1) {
        transitionCtx->unk_22C = func_800B301C;
        transitionCtx->unk_230 = func_800B3044;
        transitionCtx->unk_23C = func_800B2E30;
        transitionCtx->unk_24C = func_800B346C;
        transitionCtx->unk_238 = func_800B31D0;
        transitionCtx->unk_234 = func_800B304C;
        transitionCtx->unk_240 = func_800B3474;
        transitionCtx->unk_244 = func_800B34CC;
        transitionCtx->unk_248 = func_800B34D4;
        return;
    }

    switch (transitionCtx->unk_228) {
        case 1:
            transitionCtx->unk_22C = func_800B2438;
            transitionCtx->unk_230 = func_800B24D0;
            transitionCtx->unk_23C = func_800B2400;
            transitionCtx->unk_24C = func_800B2944;
            transitionCtx->unk_238 = func_800B2604;
            transitionCtx->unk_234 = func_800B24D8;
            transitionCtx->unk_240 = func_800B25F4;
            transitionCtx->unk_244 = func_800B25EC;
            transitionCtx->unk_248 = NULL;
            return;
        case 0:
        case 8:
            transitionCtx->unk_22C = func_800B2A88;
            transitionCtx->unk_230 = func_800B2AB0;
            transitionCtx->unk_23C = func_800B29D0;
            transitionCtx->unk_24C = func_800B2DD4;
            transitionCtx->unk_238 = func_800B2B98;
            transitionCtx->unk_234 = func_800B2AB8;
            transitionCtx->unk_240 = func_800B2DDC;
            transitionCtx->unk_244 = func_800B2E1C;
            transitionCtx->unk_248 = NULL;
            return;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 17:
        case 18:
        case 19:
            transitionCtx->unk_22C = func_800B3538;
            transitionCtx->unk_230 = func_800B3560;
            transitionCtx->unk_23C = func_800B34E0;
            transitionCtx->unk_24C = func_800B37DC;
            transitionCtx->unk_238 = func_800B3718;
            transitionCtx->unk_234 = func_800B3568;
            transitionCtx->unk_240 = func_800B37EC;
            transitionCtx->unk_244 = func_800B37E4;
            transitionCtx->unk_248 = NULL;
            return;
        case 9:
        case 10:
            globalCtx->unk_1241B = 4;
            return;
        case 11:
            globalCtx->unk_1241B = 10;
            return;
        case 12:
            globalCtx->unk_1241B = 7;
            return;
        case 14:
            globalCtx->unk_1241B = 12;
            return;
        case 15:
            globalCtx->unk_1241B = 14;
            return;
        case 16:
            globalCtx->unk_1241B = 16;
            return;
    }

    Fault_AddHungupAndCrash("../z_play.c", 2290);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BC5E0.s")
#endif

void func_800BC88C(GlobalContext* globalCtx) {
    globalCtx->transitionCtx.unk_228 = -1;
}

Gfx* func_800BC8A0(GlobalContext* globalCtx, Gfx* gfx) {
    Gfx_SetFog2(gfx, globalCtx->lightCtx.unk_07, globalCtx->lightCtx.unk_08, globalCtx->lightCtx.unk_09, 0,
                globalCtx->lightCtx.unk_0A, 1000);
}

void Gameplay_Destroy(GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;

    globalCtx->state.gfxCtx->callback = NULL;
    globalCtx->state.gfxCtx->callbackParam = 0;
    SREG(91) = 0;
    R_PAUSE_MENU_MODE = 0;

    func_800C0F08(&globalCtx->preRenderCtx);
    func_800271A8(globalCtx);
    Effect_SS_Clear(globalCtx);
    func_8005D400(globalCtx, &globalCtx->sub_11E60);

    if (D_80161490 == 3) {
        func_800B1DBC(&D_801613B0);
        D_80161490 = 0;
    }

    if (globalCtx->unk_1241B == 3) {
        globalCtx->transitionCtx.unk_230(&globalCtx->transitionCtx);
        func_800BC88C(globalCtx);
        globalCtx->unk_1241B = 0;
    }

    func_800B3968();
    func_800B3560(&globalCtx->sub_1241C);
    func_800AD054(&D_80161498);

    if (gSaveContext.linkAge != globalCtx->linkAgeOnLoad) {
        Inventory_SwapAgeEquipment();
        func_8008ECAC(globalCtx, player);
    }

    func_80031C3C(&globalCtx->actorCtx, globalCtx);
    func_80110990(globalCtx);
    KaleidoScopeCall_Destroy(globalCtx);
    KaleidoManager_Destroy();
    ZeldaArena_Cleanup();
    Fault_RemoveClient(&D_801614B8);
}

#ifdef NON_MATCHING
// regalloc and stack usage differences
// also missing some extra duplicated instructions
void Gameplay_Init(GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx;
    void* zAlloc; // 0x84
    void* zAllocAligned;
    u32 zAllocSize; // 0x7C
    Player* player; // 0x78
    EntranceInfo* spawnEntrance;
    s32 playerStartCamId;
    u8 tempSetupIndex; // 0x6F
    s32 i;

    gfxCtx = globalCtx->state.gfxCtx;

    if (gSaveContext.entranceIndex == -1) {
        gSaveContext.entranceIndex = 0;
        globalCtx->state.running = false;
        SET_NEXT_GAMESTATE(&globalCtx->state, Opening_Init, OpeningContext);
        return;
    }

    SystemArena_Display();
    func_800C4F20(globalCtx, 0x1D4790);
    KaleidoManager_Init(globalCtx);
    View_Init(&globalCtx->view, gfxCtx);
    func_800F6828(0);
    Quake_Init();

    for (i = 0; i < 4; i++) {
        globalCtx->cameraPtrs[i] = NULL;
    }

    func_80057C6C(&globalCtx->cameras[0], &globalCtx->view, &globalCtx->colCtx, globalCtx);
    Camera_ChangeStatus(&globalCtx->cameras[0], 7);

    for (i = 0; i < 3; i++) {
        func_80057C6C(&globalCtx->cameras[i + 1], &globalCtx->view, &globalCtx->colCtx, globalCtx);
        Camera_ChangeStatus(&globalCtx->cameras[i + 1], 0x100);
    }

    globalCtx->cameraPtrs[0] = &globalCtx->cameras[0];
    globalCtx->cameraPtrs[0]->unk_130 = 0;
    globalCtx->activeCamera = 0;
    func_8005AC48(&globalCtx->cameras[0], 0xFF);
    func_800A9D28(globalCtx, &globalCtx->sub_1F74);
    func_80112098(globalCtx);
    func_80110F68(globalCtx);
    func_80110450(globalCtx);
    func_8006BA00(globalCtx);
    func_80026C2C(globalCtx);
    func_800272B0(globalCtx, 0x55);
    func_8005D3BC(globalCtx, &globalCtx->sub_11E60);
    SkelAnime_AnimationCtxReset(&globalCtx->animationCtx);
    func_8006450C(globalCtx, &globalCtx->csCtx);

    if (gSaveContext.nextCutsceneIndex != 0xFFEF) {
        gSaveContext.cutsceneIndex = gSaveContext.nextCutsceneIndex;
        gSaveContext.nextCutsceneIndex = 0xFFEF;
    }

    if (gSaveContext.cutsceneIndex == 0xFFFD) {
        gSaveContext.cutsceneIndex = 0;
    }

    if (gSaveContext.nextDayTime != 0xFFFFU) {
        gSaveContext.dayTime = gSaveContext.nextDayTime;
        gSaveContext.environmentTime = gSaveContext.nextDayTime;
    }

    if ((gSaveContext.dayTime >= 0xC001) || (gSaveContext.dayTime < 0x4555)) {
        gSaveContext.nightFlag = 1;
    } else {
        gSaveContext.nightFlag = 0;
    }

    Cutscene_HandleConditionalTriggers(globalCtx);

    if ((gSaveContext.gameMode != 0) || (gSaveContext.cutsceneIndex >= 0xFFF0)) {
        gSaveContext.nayrusLoveTimer = 0;
        func_800876C8(globalCtx);
        gSaveContext.sceneSetupIndex = (gSaveContext.cutsceneIndex & 0xF) + 4;
    } else if (LINK_IS_CHILD && (gSaveContext.nightFlag == 0)) {
        gSaveContext.sceneSetupIndex = 0;
    } else if (LINK_IS_CHILD && (gSaveContext.nightFlag != 0)) {
        gSaveContext.sceneSetupIndex = 1;
    } else if (LINK_IS_ADULT && (gSaveContext.nightFlag == 0)) {
        gSaveContext.sceneSetupIndex = 2;
    } else {
        gSaveContext.sceneSetupIndex = 3;
    }

    tempSetupIndex = gSaveContext.sceneSetupIndex;
    if ((gEntranceTable[gSaveContext.entranceIndex].scene == SCENE_SPOT00) && LINK_IS_CHILD &&
        (gSaveContext.sceneSetupIndex < 4)) {
        if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && CHECK_QUEST_ITEM(QUEST_GORON_RUBY) &&
            CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE)) {
            gSaveContext.sceneSetupIndex = 1;
        } else {
            gSaveContext.sceneSetupIndex = 0;
        }
    } else if ((gEntranceTable[gSaveContext.entranceIndex].scene == SCENE_SPOT04) && LINK_IS_ADULT &&
               (gSaveContext.sceneSetupIndex < 4)) {
        if (gSaveContext.eventChkInf[4] & 0x100) {
            gSaveContext.sceneSetupIndex = 3;
        } else {
            gSaveContext.sceneSetupIndex = 2;
        }
    }

    spawnEntrance = &gEntranceTable[gSaveContext.entranceIndex + gSaveContext.sceneSetupIndex];
    Gameplay_SpawnScene(globalCtx, spawnEntrance->scene, spawnEntrance->spawn);
    osSyncPrintf("\nSCENE_NO=%d COUNTER=%d\n", gSaveContext.entranceIndex, gSaveContext.sceneSetupIndex);

    // When entering Gerudo Valley in the right setup, trigger the GC emulator to play the ending movie.
    // The emulator constantly checks whether PC is 0x81000000, so this works even though it's not a valid address.
    if ((gEntranceTable[gSaveContext.entranceIndex].scene == SCENE_SPOT09) && (gSaveContext.sceneSetupIndex == 6)) {
        osSyncPrintf("エンディングはじまるよー\n"); // "The ending starts"
        ((void (*)())0x81000000)();
        osSyncPrintf("出戻り？\n"); // "Return?"
    }

    Cutscene_HandleEntranceTriggers(globalCtx);
    KaleidoScopeCall_Init(globalCtx);
    func_801109B0(globalCtx);

    if (gSaveContext.nextDayTime != 0xFFFF) {
        if (gSaveContext.nextDayTime == 0x8001) {
            gSaveContext.unk_14++;
            gSaveContext.unk_18++;
            gSaveContext.dogIsLost = true;
            if (Inventory_ReplaceItem(globalCtx, ITEM_WEIRD_EGG, ITEM_CHICKEN) ||
                Inventory_ReplaceItem(globalCtx, ITEM_POCKET_EGG, ITEM_POCKET_CUCCO)) {
                func_8010B680(globalCtx, 0x3066, 0);
            }
            gSaveContext.nextDayTime = 0xFFFE;
        } else {
            gSaveContext.nextDayTime = 0xFFFD;
        }
    }

    SREG(91) = -1;
    R_PAUSE_MENU_MODE = 0;
    func_800C0EA8(&globalCtx->preRenderCtx);
    func_800C0E70(&globalCtx->preRenderCtx, 0x140, 0xF0, 0, 0, 0);
    func_800C0ED8(&globalCtx->preRenderCtx, 0x140, 0xF0, 0, 0);
    D_80161490 = 0;
    globalCtx->unk_1241B = 0;
    func_8008E6A0(&globalCtx->sub_7B8);
    func_800FD9A0((u32)osGetTime());
    Matrix_Init(&globalCtx->state);
    globalCtx->state.main = Gameplay_Main;
    globalCtx->state.destroy = Gameplay_Destroy;
    globalCtx->sceneLoadFlag = -0x14;
    globalCtx->unk_11E16 = 0xFF;
    globalCtx->unk_11E18 = 0;
    globalCtx->unk_11DE9 = 0;

    if (gSaveContext.gameMode != 1) {
        if (gSaveContext.nextTransition == 0xFF) {
            globalCtx->fadeTransition =
                (gEntranceTable[gSaveContext.entranceIndex + tempSetupIndex].field >> 7) & 0x7F; // Fade In
        } else {
            globalCtx->fadeTransition = gSaveContext.nextTransition;
            gSaveContext.nextTransition = 0xFF;
        }
    } else {
        globalCtx->fadeTransition = 6;
    }

    func_800B3908();
    func_800B3538(&globalCtx->sub_1241C);
    func_800B37EC(&globalCtx->sub_1241C, 3);
    func_800B37E4(&globalCtx->sub_1241C, RGBA8(0xA0, 0xA0, 0xA0, 0xFF));
    func_800B34E0(&globalCtx->sub_1241C);
    func_800AD000(&D_80161498);
    D_801614B0.a = 0x00;
    func_8006C3A0(globalCtx);

    osSyncPrintf("ZELDA ALLOC SIZE=%x\n", THA_GetSize(&globalCtx->state.tha));
    zAllocSize = THA_GetSize(&globalCtx->state.tha);
    zAlloc = Game_Alloc(&globalCtx->state, zAllocSize, "../z_play.c", 2918);
    zAllocAligned = (void*)(((u32)zAlloc + 8) & ~0xF);
    ZeldaArena_Init(zAllocAligned, zAllocSize - (u32)zAllocAligned + (u32)zAlloc);
    osSyncPrintf("ゼルダヒープ %08x-%08x\n", zAllocAligned,
                 (s32)((u32)zAllocAligned + zAllocSize) - (s32)((u32)zAllocAligned - (u32)zAlloc)); // "Zelda Heap"

    Fault_AddClient(&D_801614B8, ZeldaArena_Display, NULL, NULL);
    func_800304DC(globalCtx, &globalCtx->actorCtx, globalCtx->linkActorEntry);

    while (!func_800973FC(globalCtx, &globalCtx->roomCtx)) {
        ; // Empty Loop
    }

    player = PLAYER;
    func_80058148(&globalCtx->cameras[0], player);
    func_8005A444(&globalCtx->cameras[0], 0);

    playerStartCamId = player->actor.params & 0xFF;
    if (playerStartCamId != 0xFF) {
        osSyncPrintf("player has start camera ID (" VT_FGCOL(BLUE) "%d" VT_RST ")\n", playerStartCamId);
        func_8005A7A8(&globalCtx->cameras[0], playerStartCamId);
    }

    if (YREG(15) == 0x20) {
        globalCtx->unk_1242B = 2;
    } else if (YREG(15) == 0x10) {
        globalCtx->unk_1242B = 1;
    } else {
        globalCtx->unk_1242B = 0;
    }

    Interface_SetSceneRestrictions(globalCtx);
    func_800758AC(globalCtx);
    gSaveContext.seqIndex = globalCtx->soundCtx.musicSeq;
    gSaveContext.nightSeqIndex = globalCtx->soundCtx.nighttimeSFX;
    func_8002DF18(globalCtx, PLAYER);
    func_800A390C(globalCtx, &globalCtx->animationCtx);
    gSaveContext.respawnFlag = 0;

    if (dREG(95) != 0) {
        D_8012D1F0 = D_801614D0;
        osSyncPrintf("\nkawauso_data=[%x]", D_8012D1F0);
        DmaMgr_DMARomToRam(0x03FEB000, (u32)D_8012D1F0, 0x5000);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/Gameplay_Init.s")
#endif

#ifdef NON_MATCHING
// regalloc and stack usage differences
// also missing an extra move instruction
void Gameplay_Update(GlobalContext* globalCtx) {
    s32 sp80;
    Input* input;
    u32 i; // 0x78
    s32 temp;

    input = globalCtx->state.input;

    if ((SREG(1) < 0) || (DREG(0) != 0)) {
        SREG(1) = 0;
        ZeldaArena_Display();
    }

    if ((HREG(80) == 18) && (HREG(81) < 0)) {
        HREG(81) = 0;
        osSyncPrintf("object_exchange_rom_address %u\n", gObjectTableSize);
        osSyncPrintf("RomStart RomEnd   Size\n");
        for (i = 0; i < gObjectTableSize; i++) {
            s32 size = gObjectTable[i].vromEnd - gObjectTable[i].vromStart;
            osSyncPrintf("%08x-%08x %08x(%8.3fKB)\n", gObjectTable[i].vromStart, gObjectTable[i].vromEnd, size,
                         size * 0.0009765625f);
        }
        osSyncPrintf("\n");
    }

    if ((HREG(81) == 18) && (HREG(82) < 0)) {
        HREG(82) = 0;
        ActorOverlayTable_LogPrint();
    }

    gSegments[4] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[globalCtx->objectCtx.mainKeepIndex].segment);
    gSegments[5] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[globalCtx->objectCtx.subKeepIndex].segment);
    gSegments[2] = PHYSICAL_TO_VIRTUAL(globalCtx->sceneSegment);

    if (func_8008E6AC(&globalCtx->sub_7B8, &input[1]) != 0) {
        if ((globalCtx->unk_1241B == 0) && (globalCtx->sceneLoadFlag != 0)) {
            globalCtx->unk_1241B = 1;
        }

        if (D_80161490 != 0) {
            switch (D_80161490) {
                case 2:
                    if (func_800B1E84(&D_801613B0, 10, 7) == 0) {
                        osSyncPrintf("fbdemo_init呼出し失敗！\n"); // "fbdemo_init call failed!"
                        D_80161490 = 0;
                    } else {
                        D_801613B0.unk_DC = gZBuffer;
                        D_80161490 = 3;
                        R_UPDATE_RATE = 1;
                    }
                    break;
                case 3:
                    func_800B23E8(&D_801613B0);
                    break;
            }
        }

        if (globalCtx->unk_1241B != 0) {
            switch (globalCtx->unk_1241B) {
                case 1:
                    if (globalCtx->sceneLoadFlag != -0x14) {
                        s16 sp6E = 0;
                        Interface_ChangeAlpha(1);

                        if (gSaveContext.cutsceneIndex >= 0xFFF0) {
                            sp6E = (gSaveContext.cutsceneIndex & 0xF) + 4;
                        }

                        if (!(gEntranceTable[globalCtx->nextEntranceIndex + sp6E].field & 0x8000)) { // Continue BGM Off
                            osSyncPrintf("\n\n\nサウンドイニシャル来ました。111"); // "Sound initalized. 111"
                            if ((globalCtx->fadeTransition < 56) && (func_80077600() == 0)) {
                                osSyncPrintf("\n\n\nサウンドイニシャル来ました。222"); // "Sound initalized. 222"
                                func_800F6964(0x14);
                                gSaveContext.seqIndex = 0xFF;
                                gSaveContext.nightSeqIndex = 0xFF;
                            }
                        }
                    }

                    if (CREG(11) == 0) {
                        func_800BC5E0(globalCtx, globalCtx->fadeTransition);
                    } else {
                        func_800BC5E0(globalCtx, CREG(12));
                    }

                    if (globalCtx->unk_1241B >= 4) {
                        break;
                    }

                case 2:
                    globalCtx->transitionCtx.unk_22C(&globalCtx->transitionCtx);

                    if ((globalCtx->transitionCtx.unk_228 >> 5) == 1) {
                        globalCtx->transitionCtx.unk_240(&globalCtx->transitionCtx,
                                                         globalCtx->transitionCtx.unk_228 | 0x80);
                    }

                    gSaveContext.unk_1419 = 14;
                    if ((globalCtx->transitionCtx.unk_228 == 8) || (globalCtx->transitionCtx.unk_228 == 9)) {
                        gSaveContext.unk_1419 = 28;
                    }

                    gSaveContext.fadeDuration = 60;
                    if ((globalCtx->transitionCtx.unk_228 == 4) || (globalCtx->transitionCtx.unk_228 == 5)) {
                        gSaveContext.fadeDuration = 20;
                    } else if ((globalCtx->transitionCtx.unk_228 == 6) || (globalCtx->transitionCtx.unk_228 == 7)) {
                        gSaveContext.fadeDuration = 150;
                    } else if (globalCtx->transitionCtx.unk_228 == 17) {
                        gSaveContext.fadeDuration = 2;
                    }

                    if ((globalCtx->transitionCtx.unk_228 == 3) || (globalCtx->transitionCtx.unk_228 == 5) ||
                        (globalCtx->transitionCtx.unk_228 == 7) || (globalCtx->transitionCtx.unk_228 == 13) ||
                        (globalCtx->transitionCtx.unk_228 == 17)) {
                        globalCtx->transitionCtx.unk_244(&globalCtx->transitionCtx, RGBA8(0xA0, 0xA0, 0xA0, 0xFF));
                        if (globalCtx->transitionCtx.unk_248 != NULL) {
                            globalCtx->transitionCtx.unk_248(&globalCtx->transitionCtx, RGBA8(0xA0, 0xA0, 0xA0, 0xFF));
                        }
                    } else if (globalCtx->transitionCtx.unk_228 == 18) {
                        globalCtx->transitionCtx.unk_244(&globalCtx->transitionCtx, RGBA8(0x8C, 0x8C, 0x64, 0xFF));
                        if (globalCtx->transitionCtx.unk_248 != NULL) {
                            globalCtx->transitionCtx.unk_248(&globalCtx->transitionCtx, RGBA8(0x8C, 0x8C, 0x64, 0xFF));
                        }
                    } else if (globalCtx->transitionCtx.unk_228 == 19) {
                        globalCtx->transitionCtx.unk_244(&globalCtx->transitionCtx, RGBA8(0x46, 0x64, 0x6E, 0xFF));
                        if (globalCtx->transitionCtx.unk_248 != NULL) {
                            globalCtx->transitionCtx.unk_248(&globalCtx->transitionCtx, RGBA8(0x46, 0x64, 0x6E, 0xFF));
                        }
                    } else {
                        globalCtx->transitionCtx.unk_244(&globalCtx->transitionCtx, RGBA8(0x00, 0x00, 0x00, 0x00));
                        if (globalCtx->transitionCtx.unk_248 != NULL) {
                            globalCtx->transitionCtx.unk_248(&globalCtx->transitionCtx, RGBA8(0x00, 0x00, 0x00, 0x00));
                        }
                    }

                    if (globalCtx->sceneLoadFlag == -0x14) {
                        globalCtx->transitionCtx.unk_240(&globalCtx->transitionCtx, 1);
                    } else {
                        globalCtx->transitionCtx.unk_240(&globalCtx->transitionCtx, 2);
                    }

                    globalCtx->transitionCtx.unk_23C(&globalCtx->transitionCtx);

                    if (globalCtx->transitionCtx.unk_228 == 13) {
                        globalCtx->unk_1241B = 11;
                    } else {
                        globalCtx->unk_1241B = 3;
                    }
                    break;

                case 3:
                    if (globalCtx->transitionCtx.unk_24C(&globalCtx->transitionCtx) != 0) {
                        if (globalCtx->transitionCtx.unk_228 >= 56) {
                            if (globalCtx->sceneLoadFlag == -0x14) {
                                globalCtx->transitionCtx.unk_230(&globalCtx->transitionCtx);
                                func_800BC88C(globalCtx);
                                globalCtx->unk_1241B = 0;
                            }
                        } else if (globalCtx->sceneLoadFlag != -0x14) {
                            globalCtx->state.running = 0;
                            if (gSaveContext.gameMode != 2) {
                                SET_NEXT_GAMESTATE(&globalCtx->state, Gameplay_Init, GlobalContext);
                                gSaveContext.entranceIndex = globalCtx->nextEntranceIndex;
                                if (gSaveContext.minigameState == 1) {
                                    gSaveContext.minigameState = 3;
                                }
                            } else {
                                SET_NEXT_GAMESTATE(&globalCtx->state, func_80811A20, char[0x1CAE0]);
                            }
                        } else {
                            globalCtx->transitionCtx.unk_230(&globalCtx->transitionCtx);
                            func_800BC88C(globalCtx);
                            globalCtx->unk_1241B = 0;
                            if (D_80161490 == 3) {
                                func_800B1DBC(&D_801613B0);
                                D_80161490 = 0;
                                R_UPDATE_RATE = 3;
                            }
                        }
                        globalCtx->sceneLoadFlag = 0;
                    } else {
                        globalCtx->transitionCtx.unk_234(&globalCtx->transitionCtx, R_UPDATE_RATE);
                    }
                    break;
            }

            switch (globalCtx->unk_1241B) {
                case 4:
                    D_801614C8 = 0;
                    globalCtx->envCtx.unk_E1 = 1;
                    globalCtx->envCtx.unk_E2[0] = 0xA0;
                    globalCtx->envCtx.unk_E2[1] = 0xA0;
                    globalCtx->envCtx.unk_E2[2] = 0xA0;
                    if (globalCtx->sceneLoadFlag != -0x14) {
                        globalCtx->envCtx.unk_E2[3] = 0;
                        globalCtx->unk_1241B = 5;
                    } else {
                        globalCtx->envCtx.unk_E2[3] = 0xFF;
                        globalCtx->unk_1241B = 6;
                    }
                    break;

                case 5:
                    globalCtx->envCtx.unk_E2[3] = (D_801614C8 / 20.0f) * 255.0f;
                    if (D_801614C8 >= 20 && 1) {
                        globalCtx->state.running = 0;
                        SET_NEXT_GAMESTATE(&globalCtx->state, Gameplay_Init, GlobalContext);
                        gSaveContext.entranceIndex = globalCtx->nextEntranceIndex;
                        globalCtx->sceneLoadFlag = 0;
                        globalCtx->unk_1241B = 0;
                    } else {
                        D_801614C8++;
                    }
                    break;

                case 6:
                    globalCtx->envCtx.unk_E2[3] = (1 - D_801614C8 / 20.0f) * 255.0f;
                    if (D_801614C8 >= 20 && 1) {
                        D_80161490 = 0;
                        R_UPDATE_RATE = 3;
                        globalCtx->sceneLoadFlag = 0;
                        globalCtx->unk_1241B = 0;
                        globalCtx->envCtx.unk_E1 = 0;
                    } else {
                        D_801614C8++;
                    }
                    break;

                case 7:
                    D_801614C8 = 0;
                    globalCtx->envCtx.unk_E1 = 1;
                    globalCtx->envCtx.unk_E2[0] = 0xAA;
                    globalCtx->envCtx.unk_E2[1] = 0xA0;
                    globalCtx->envCtx.unk_E2[2] = 0x96;
                    if (globalCtx->sceneLoadFlag != -0x14) {
                        globalCtx->envCtx.unk_E2[3] = 0;
                        globalCtx->unk_1241B = 5;
                    } else {
                        globalCtx->envCtx.unk_E2[3] = 0xFF;
                        globalCtx->unk_1241B = 6;
                    }
                    break;

                case 10:
                    if (0) {} // Improves codegen
                    if (globalCtx->sceneLoadFlag != -0x14) {
                        globalCtx->state.running = 0;
                        SET_NEXT_GAMESTATE(&globalCtx->state, Gameplay_Init, GlobalContext);
                        gSaveContext.entranceIndex = globalCtx->nextEntranceIndex;
                        globalCtx->sceneLoadFlag = 0;
                        globalCtx->unk_1241B = 0;
                    } else {
                        D_80161490 = 0;
                        R_UPDATE_RATE = 3;
                        globalCtx->sceneLoadFlag = 0;
                        globalCtx->unk_1241B = 0;
                    }
                    break;

                case 11:
                    if (gSaveContext.unk_1410 != 0) {
                        globalCtx->unk_1241B = 3;
                    }
                    break;

                case 12:
                    if (globalCtx->sceneLoadFlag != -0x14) {
                        globalCtx->envCtx.unk_E6 = 1;
                        globalCtx->unk_1241B = 13;
                    } else {
                        globalCtx->envCtx.unk_E6 = 2;
                        globalCtx->envCtx.unk_E7 = 0xFF;
                        globalCtx->envCtx.unk_E8 = 0xFF;
                        globalCtx->unk_1241B = 13;
                    }
                    break;

                case 13:
                    Audio_PlaySoundGeneral(0x20C0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    if (globalCtx->sceneLoadFlag == -0x14) {
                        if (globalCtx->envCtx.unk_E7 < 0x6E) {
                            D_80161490 = 0;
                            R_UPDATE_RATE = 3;
                            globalCtx->sceneLoadFlag = 0;
                            globalCtx->unk_1241B = 0;
                        }
                    } else {
                        if (globalCtx->envCtx.unk_E8 == 0xFF) {
                            if (0) {} // Improves codegen
                            globalCtx->state.running = 0;
                            SET_NEXT_GAMESTATE(&globalCtx->state, Gameplay_Init, GlobalContext);
                            gSaveContext.entranceIndex = globalCtx->nextEntranceIndex;
                            globalCtx->sceneLoadFlag = 0;
                            globalCtx->unk_1241B = 0;
                        }
                    }
                    break;

                case 14:
                    if (globalCtx->sceneLoadFlag == -0x14) {
                        globalCtx->envCtx.unk_E6 = 4;
                        globalCtx->envCtx.unk_E7 = 0xFF;
                        globalCtx->envCtx.unk_E8 = 0xFF;
                        LOG_STRING("来た!!!!!!!!!!!!!!!!!!!!!", "../z_play.c", 3471); // "It's here!!!!!!!!!"
                        globalCtx->unk_1241B = 15;
                    } else {
                        globalCtx->unk_1241B = 12;
                    }
                    break;

                case 15:
                    Audio_PlaySoundGeneral(0x20C0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    if (globalCtx->sceneLoadFlag == -0x14) {
                        if (globalCtx->envCtx.unk_E7 <= 0) {
                            D_80161490 = 0;
                            R_UPDATE_RATE = 3;
                            globalCtx->sceneLoadFlag = 0;
                            globalCtx->unk_1241B = 0;
                        }
                    }
                    break;

                case 16:
                    D_801614C8 = 0;
                    globalCtx->envCtx.unk_E1 = 1;
                    globalCtx->envCtx.unk_E2[0] = 0;
                    globalCtx->envCtx.unk_E2[1] = 0;
                    globalCtx->envCtx.unk_E2[2] = 0;
                    globalCtx->envCtx.unk_E2[3] = 0xFF;
                    globalCtx->unk_1241B = 17;
                    break;

                case 17:
                    if (gSaveContext.unk_1410 != 0) {
                        globalCtx->envCtx.unk_E2[3] = gSaveContext.unk_1410;
                        if (gSaveContext.unk_1410 < 0x65) {
                            D_80161490 = 0;
                            R_UPDATE_RATE = 3;
                            globalCtx->sceneLoadFlag = 0;
                            globalCtx->unk_1241B = 0;
                        }
                    }
                    break;
            }
        }

        if (1 && HREG(63)) {
            LOG_NUM("1", 1, "../z_play.c", 3533);
        }

        temp = HREG(63);
        if (1 && (D_80161490 != 3)) {
            if (1 && temp) {
                LOG_NUM("1", 1, "../z_play.c", 3542);
            }

            if ((gSaveContext.gameMode == 0) && (globalCtx->msgCtx.msgMode == 0) && (globalCtx->unk_10A20 == 0)) {
                func_8006EA30(globalCtx);
            }

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3551);
            }

            sp80 = (globalCtx->pauseCtx.state != 0) || (globalCtx->pauseCtx.flag != 0);

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3555);
            }

            SkelAnime_AnimationCtxReset(&globalCtx->animationCtx);

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3561);
            }

            Object_UpdateBank(&globalCtx->objectCtx);

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3577);
            }

            if ((sp80 == 0) && (IREG(72) == 0)) {
                if (1 && HREG(63)) {
                    LOG_NUM("1", 1, "../z_play.c", 3580);
                }

                globalCtx->gameplayFrames++;

                func_800AA178(1);

                if ((globalCtx->actorCtx.unk_00 != 0) && (globalCtx->actorCtx.unk_00-- < 5)) {
                    osSyncPrintf("FINISH=%d\n", globalCtx->actorCtx.unk_00);
                    if ((globalCtx->actorCtx.unk_00 > 0) && ((globalCtx->actorCtx.unk_00 % 2) != 0)) {
                        globalCtx->envCtx.unk_E1 = 1;
                        globalCtx->envCtx.unk_E2[0] = globalCtx->envCtx.unk_E2[1] = globalCtx->envCtx.unk_E2[2] = 0x96;
                        globalCtx->envCtx.unk_E2[3] = 0x50;
                    } else {
                        globalCtx->envCtx.unk_E1 = 0;
                    }
                } else {
                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3606);
                    }

                    func_800973FC(globalCtx, &globalCtx->roomCtx);

                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3612);
                    }

                    func_8006139C(globalCtx, &globalCtx->sub_11E60);

                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3618);
                    }

                    func_80061C98(globalCtx, &globalCtx->sub_11E60);

                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3624);
                    }

                    func_800622E4(globalCtx, &globalCtx->sub_11E60);

                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3631);
                    }

                    func_8005D40C(globalCtx, &globalCtx->sub_11E60);

                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3637);
                    }

                    if (globalCtx->unk_11DE9 == 0) {
                        Actor_UpdateAll(globalCtx, &globalCtx->actorCtx);
                    }

                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3643);
                    }

                    func_80064558(globalCtx, &globalCtx->csCtx);

                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3648);
                    }

                    func_800645A0(globalCtx, &globalCtx->csCtx);

                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3651);
                    }

                    func_80026F70(globalCtx);

                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3657);
                    }

                    Effect_SS_UpdateAllParticles(globalCtx);

                    if (1 && HREG(63)) {
                        LOG_NUM("1", 1, "../z_play.c", 3662);
                    }
                }
            } else {
                func_800AA178(0);
            }

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3672);
            }

            func_80095AA0(globalCtx, &globalCtx->roomCtx.curRoom, &input[1], 0);

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3675);
            }

            func_80095AA0(globalCtx, &globalCtx->roomCtx.prevRoom, &input[1], 1);

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3677);
            }

            if (globalCtx->unk_1242B != 0) {
                if (!~(input[0].press.in.button | ~8)) {
                    if ((globalCtx->pauseCtx.state != 0) || (globalCtx->pauseCtx.flag != 0)) {
                        // Translates to: "Changing viewpoint is prohibited due to the kaleidoscope"
                        osSyncPrintf(VT_FGCOL(CYAN) "カレイドスコープ中につき視点変更を禁止しております\n" VT_RST);
                    } else if (func_8008E988(globalCtx)) {
                        // Translates to: "Changing viewpoint is prohibited during the cutscene"
                        osSyncPrintf(VT_FGCOL(CYAN) "デモ中につき視点変更を禁止しております\n" VT_RST);
                    } else if (YREG(15) == 0x10) {
                        Audio_PlaySoundGeneral(NA_SE_SY_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    } else {
                        func_800BC490(globalCtx, globalCtx->unk_1242B ^ 3);
                    }
                }
                func_800BC450(globalCtx);
            }

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3708);
            }

            func_800B1744(&globalCtx->skyboxCtx);

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3716);
            }

            if ((globalCtx->pauseCtx.state != 0) || (globalCtx->pauseCtx.flag != 0)) {
                if (1 && HREG(63)) {
                    LOG_NUM("1", 1, "../z_play.c", 3721);
                }

                KaleidoScopeCall_Update(globalCtx);
            } else if (globalCtx->unk_10A20 != 0) {
                if (1 && HREG(63)) {
                    LOG_NUM("1", 1, "../z_play.c", 3727);
                }

                func_801104C8(globalCtx);
            } else {
                if (1 && HREG(63)) {
                    LOG_NUM("1", 1, "../z_play.c", 3733);
                }

                func_8010F6F0(globalCtx);
            }

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3737);
            }

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3742);
            }

            Interface_Update(globalCtx);

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3765);
            }

            func_800A390C(globalCtx, &globalCtx->animationCtx);

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3771);
            }

            func_8006BA30(globalCtx);

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3777);
            }

            func_800B39B8(R_UPDATE_RATE);

            if (1 && HREG(63)) {
                LOG_NUM("1", 1, "../z_play.c", 3783);
            }

            func_800B3568(&globalCtx->sub_1241C, R_UPDATE_RATE);
        }
    }

    if (1 && HREG(63)) {
        LOG_NUM("1", 1, "../z_play.c", 3799);
    }

    if (1 && HREG(63)) {
        LOG_NUM("1", 1, "../z_play.c", 3801);
    }

    if ((sp80 == 0) || (D_8011D394 != 0)) {
        s32 i; // 0x54
        s32 camIdx;
        Vec3s sp48;

        globalCtx->nextCamera = globalCtx->activeCamera;

        if (1 && HREG(63)) {
            LOG_NUM("1", 1, "../z_play.c", 3806);
        }

        for (i = 0, camIdx = globalCtx->nextCamera; i < 4; i++) {
            if ((i != camIdx) && (globalCtx->cameraPtrs[i] != NULL)) {
                if (1 && HREG(63)) {
                    LOG_NUM("1", 1, "../z_play.c", 3809);
                }

                func_800591EC(&sp48, globalCtx->cameraPtrs[i]);
                camIdx = globalCtx->nextCamera;
            }
        }

        func_800591EC(&sp48, globalCtx->cameraPtrs[camIdx]);

        if (1 && HREG(63)) {
            LOG_NUM("1", 1, "../z_play.c", 3814);
        }
    }

    if (1 && HREG(63)) {
        LOG_NUM("1", 1, "../z_play.c", 3816);
    }

    func_80070C24(globalCtx, &globalCtx->envCtx, &globalCtx->lightCtx, &globalCtx->pauseCtx, &globalCtx->msgCtx,
                  &globalCtx->unk_10A20, globalCtx->state.gfxCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/Gameplay_Update.s")
#endif

void Gameplay_DrawOverlayElements(GlobalContext* globalCtx) {
    if ((globalCtx->pauseCtx.state != 0) || (globalCtx->pauseCtx.flag != 0)) {
        KaleidoScopeCall_Draw(globalCtx);
    }

    if (gSaveContext.gameMode == 0) {
        Interface_Draw(globalCtx);
    }

    func_8010F58C(globalCtx);

    if (globalCtx->unk_10A20 != 0) {
        func_80110460(globalCtx);
    }
}

#ifdef NON_MATCHING
// regalloc, stakc usage and minor ordering differences
void Gameplay_Draw(GlobalContext* globalCtx) {
    LightMapper* sp228;
    Vec3f sp21C;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4]; // 0x208

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_play.c", 3907);

    gSegments[4] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[globalCtx->objectCtx.mainKeepIndex].segment);
    gSegments[5] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[globalCtx->objectCtx.subKeepIndex].segment);
    gSegments[2] = PHYSICAL_TO_VIRTUAL(globalCtx->sceneSegment);

    gSPSegment(gfxCtx->polyOpa.p++, 0x00, NULL);
    gSPSegment(gfxCtx->polyXlu.p++, 0x00, NULL);
    gSPSegment(gfxCtx->overlay.p++, 0x00, NULL);

    gSPSegment(gfxCtx->polyOpa.p++, 0x04, globalCtx->objectCtx.status[globalCtx->objectCtx.mainKeepIndex].segment);
    gSPSegment(gfxCtx->polyXlu.p++, 0x04, globalCtx->objectCtx.status[globalCtx->objectCtx.mainKeepIndex].segment);
    gSPSegment(gfxCtx->overlay.p++, 0x04, globalCtx->objectCtx.status[globalCtx->objectCtx.mainKeepIndex].segment);

    gSPSegment(gfxCtx->polyOpa.p++, 0x05, globalCtx->objectCtx.status[globalCtx->objectCtx.subKeepIndex].segment);
    gSPSegment(gfxCtx->polyXlu.p++, 0x05, globalCtx->objectCtx.status[globalCtx->objectCtx.subKeepIndex].segment);
    gSPSegment(gfxCtx->overlay.p++, 0x05, globalCtx->objectCtx.status[globalCtx->objectCtx.subKeepIndex].segment);

    gSPSegment(gfxCtx->polyOpa.p++, 0x02, globalCtx->sceneSegment);
    gSPSegment(gfxCtx->polyXlu.p++, 0x02, globalCtx->sceneSegment);
    gSPSegment(gfxCtx->overlay.p++, 0x02, globalCtx->sceneSegment);

    func_80095248(gfxCtx, 0, 0, 0);

    if ((HREG(80) != 10) || (HREG(82) != 0)) {
        gfxCtx->polyOpa.p = func_800BC8A0(globalCtx, gfxCtx->polyOpa.p);
        gfxCtx->polyXlu.p = func_800BC8A0(globalCtx, gfxCtx->polyXlu.p);

        func_800AA460(&globalCtx->view, globalCtx->view.fovy, globalCtx->view.zNear, globalCtx->lightCtx.unk_0C);
        func_800AAA50(&globalCtx->view, 15);

        Matrix_MtxToMtxF(&globalCtx->view.viewing, &globalCtx->mf_11DA0);
        Matrix_MtxToMtxF(&globalCtx->view.projection, &globalCtx->mf_11D60);
        Matrix_Mult(&globalCtx->mf_11D60, MTXMODE_NEW);
        Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
        Matrix_Get(&globalCtx->mf_11D60);
        globalCtx->mf_11DA0.mf[3][2] = 0.0f;
        globalCtx->mf_11DA0.mf[3][1] = 0.0f;
        globalCtx->mf_11DA0.mf[3][0] = 0.0f;
        globalCtx->mf_11DA0.mf[2][3] = 0.0f;
        globalCtx->mf_11DA0.mf[1][3] = 0.0f;
        globalCtx->mf_11DA0.mf[0][3] = 0.0f;
        Matrix_Reverse(&globalCtx->mf_11DA0);
        globalCtx->unk_11DE0 = Matrix_MtxFToMtx(Matrix_CheckFloats(&globalCtx->mf_11DA0, "../z_play.c", 4005),
                                                Graph_Alloc(gfxCtx, sizeof(Mtx)));

        gSPSegment(gfxCtx->polyOpa.p++, 0x01, globalCtx->unk_11DE0);

        if ((HREG(80) != 10) || (HREG(92) != 0)) {
            Gfx* sp1CC = gfxCtx->polyOpa.p;
            Gfx* sp1D0 = Graph_GfxPlusOne(gfxCtx->polyOpa.p);
            gSPDisplayList(gfxCtx->overlay.p++, sp1D0);

            if ((globalCtx->unk_1241B == 3) || (globalCtx->unk_1241B == 11) ||
                (globalCtx->transitionCtx.unk_228 >= 56)) {
                View view;         // 0xA0
                Viewport viewport; // 0x90

                View_Init(&view, gfxCtx);
                view.flags = 2 | 8;

                // clang-format off
                viewport.bottomY = SCREEN_HEIGHT; viewport.rightX = SCREEN_WIDTH;
                viewport.topY = 0; viewport.leftX = 0;
                // clang-format on

                View_SetViewport(&view, &viewport);
                func_800AB9EC(&view, 15, &sp1D0);
                globalCtx->transitionCtx.unk_238(&globalCtx->transitionCtx, &sp1D0);
            }

            func_800B3718(&globalCtx->sub_1241C, &sp1D0);

            if (D_801614B0.a > 0x00) {
                D_80161498.color.rgba = D_801614B0.rgba;
                func_800AD5C0(&D_80161498, &sp1D0);
            }

            gSPEndDisplayList(sp1D0++);
            Graph_BranchDlist(sp1CC, sp1D0);
            gfxCtx->polyOpa.p = sp1D0;
        }

        if (D_80161490 == 3) {
            Gfx* sp88 = gfxCtx->polyOpa.p;
            func_800B2188(&D_801613B0, &sp88);
            gfxCtx->polyOpa.p = sp88;
            goto Gameplay_Draw_DrawOverlayElements;
        } else {
            func_800C0ED8(&globalCtx->preRenderCtx, 0x140, 0xF0, gfxCtx->curFrameBuffer, gZBuffer);

            if (R_PAUSE_MENU_MODE == 2) {
                MsgEvent_SendNullTask();
                func_800C3770(&globalCtx->preRenderCtx);
                R_PAUSE_MENU_MODE = 3;
            } else if (R_PAUSE_MENU_MODE >= 4) {
                R_PAUSE_MENU_MODE = 0;
            }

            if (R_PAUSE_MENU_MODE == 3) {
                Gfx* sp84 = gfxCtx->polyOpa.p;
                func_800C24BC(&globalCtx->preRenderCtx, &sp84);
                gfxCtx->polyOpa.p = sp84;
                goto Gameplay_Draw_DrawOverlayElements;
            } else {
                s32 sp80;
                if ((HREG(80) != 10) || (HREG(83) != 0)) {
                    if (globalCtx->skyboxId != 0) {
                        s32 skyboxId = globalCtx->skyboxId;
                        if ((globalCtx->skyboxId != 0x1D) && !globalCtx->envCtx.skyDisabled) {
                            if ((globalCtx->skyboxId == 1) || (skyboxId == 5)) {
                                func_8006FC88(globalCtx->skyboxId, &globalCtx->envCtx, &globalCtx->skyboxCtx);
                                func_800B10C4(&globalCtx->skyboxCtx, gfxCtx, globalCtx->skyboxId,
                                              globalCtx->envCtx.unk_13, globalCtx->view.eye.x, globalCtx->view.eye.y,
                                              globalCtx->view.eye.z);
                            } else if (globalCtx->skyboxCtx.unk_140 == 0) {
                                func_800B10C4(&globalCtx->skyboxCtx, gfxCtx, skyboxId, 0, globalCtx->view.eye.x,
                                              globalCtx->view.eye.y, globalCtx->view.eye.z);
                            }
                        }
                    }
                }

                if ((HREG(80) != 10) || (HREG(90) & 2)) {
                    if (!globalCtx->envCtx.sunMoonDisabled) {
                        func_800730DC(globalCtx);
                    }
                }

                if ((HREG(80) != 10) || (HREG(90) & 1)) {
                    func_80074D6C(globalCtx);
                }

                if ((HREG(80) != 10) || (HREG(90) & 4)) {
                    func_800750C0(globalCtx);
                    func_8007542C(globalCtx, 0);
                }

                if ((HREG(80) != 10) || (HREG(90) & 8)) {
                    sp228 = Lights_CreateMapper(&globalCtx->lightCtx, gfxCtx);
                    func_8007A474(sp228, globalCtx->lightCtx.lightsHead, 0);
                    func_80079EFC(sp228, gfxCtx);
                }

                if ((HREG(80) != 10) || (HREG(84) != 0)) {
                    if (VREG(94) == 0) {
                        if (HREG(80) != 10) {
                            sp80 = 3;
                        } else {
                            sp80 = HREG(84);
                        }
                        Scene_Draw(globalCtx);
                        Room_Draw(globalCtx, &globalCtx->roomCtx.curRoom, sp80 & 3);
                        Room_Draw(globalCtx, &globalCtx->roomCtx.prevRoom, sp80 & 3);
                    }
                }

                if ((HREG(80) != 10) || (HREG(83) != 0)) {
                    if (globalCtx->skyboxCtx.unk_140 != 0) {
                        if (globalCtx->cameraPtrs[globalCtx->activeCamera]->unk_142 != 0x19) {
                            Vec3f sp74;
                            func_8005AFB4(&sp74, globalCtx->cameraPtrs[globalCtx->activeCamera]);
                            func_800B10C4(&globalCtx->skyboxCtx, gfxCtx, globalCtx->skyboxId, 0,
                                          globalCtx->view.eye.x + sp74.x, globalCtx->view.eye.y + sp74.y,
                                          globalCtx->view.eye.z + sp74.z);
                        }
                    }
                }

                if (globalCtx->envCtx.unk_EE[1] != 0) {
                    func_80074704(globalCtx, &globalCtx->view, gfxCtx);
                }

                if ((HREG(80) != 10) || (HREG(84) != 0)) {
                    func_8007672C(gfxCtx, 0, 0, 0, globalCtx->unk_11E18, 1);
                }

                if ((HREG(80) != 10) || (HREG(85) != 0)) {
                    func_800315AC(globalCtx, &globalCtx->actorCtx);
                }

                if ((HREG(80) != 10) || (HREG(86) != 0)) {
                    if (!globalCtx->envCtx.sunMoonDisabled) {
                        sp21C.x = globalCtx->view.eye.x + globalCtx->envCtx.unk_04.x;
                        sp21C.y = globalCtx->view.eye.y + globalCtx->envCtx.unk_04.y;
                        sp21C.z = globalCtx->view.eye.z + globalCtx->envCtx.unk_04.z;
                        func_80073988(globalCtx, &globalCtx->envCtx, &globalCtx->view, gfxCtx, sp21C, 0);
                    }
                    func_80075E68(globalCtx);
                }

                if ((HREG(80) != 10) || (HREG(87) != 0)) {
                    if (MREG(64) != 0) {
                        func_8007672C(gfxCtx, MREG(65), MREG(66), MREG(67), MREG(68), 3);
                    }

                    if (globalCtx->envCtx.unk_E1) {} // Necessary to match

                    if (globalCtx->envCtx.unk_E1 == 1) {
                        func_8007672C(gfxCtx, globalCtx->envCtx.unk_E2[0], globalCtx->envCtx.unk_E2[1],
                                      globalCtx->envCtx.unk_E2[2], globalCtx->envCtx.unk_E2[3], 3);
                    } else {
                        // Also necessary to match
                    }
                }

                if ((HREG(80) != 10) || (HREG(88) != 0)) {
                    if (globalCtx->envCtx.unk_E6 != 0) {
                        func_80076934(globalCtx);
                    }
                }

                if ((HREG(80) != 10) || (HREG(93) != 0)) {
                    DebugDisplay_DrawObjects(globalCtx);
                }

                if ((R_PAUSE_MENU_MODE == 1) || (D_80161490 == 1)) {
                    Gfx* sp70 = gfxCtx->overlay.p;
                    globalCtx->preRenderCtx.unk_10 = gfxCtx->curFrameBuffer;
                    globalCtx->preRenderCtx.unk_14 = gZBuffer;
                    func_800C1F20(&globalCtx->preRenderCtx, &sp70);
                    if (R_PAUSE_MENU_MODE == 1) {
                        globalCtx->preRenderCtx.unk_18 = gfxCtx->curFrameBuffer;
                        func_800C20B4(&globalCtx->preRenderCtx, &sp70);
                        R_PAUSE_MENU_MODE = 2;
                    } else {
                        D_80161490 = 2;
                    }
                    gfxCtx->overlay.p = sp70;
                    globalCtx->preRenderCtx.unk_A3 = 2;
                    SREG(33) |= 1;
                } else {
                Gameplay_Draw_DrawOverlayElements:
                    if ((HREG(80) != 10) || (HREG(89) != 0)) {
                        Gameplay_DrawOverlayElements(globalCtx);
                    }
                }
            }
        }
    }

    if (globalCtx->view.unk_124 != 0) {
        Vec3s sp50;
        func_800591EC(&sp50, globalCtx->cameraPtrs[globalCtx->activeCamera]);
        func_800AB944(&globalCtx->view);
        globalCtx->view.unk_124 = 0;
        if ((globalCtx->skyboxId != 0) && (globalCtx->skyboxId != 0x1D) && !globalCtx->envCtx.skyDisabled) {
            func_800B1030(&globalCtx->skyboxCtx, globalCtx->view.eye.x, globalCtx->view.eye.y, globalCtx->view.eye.z);
        }
    }

    func_80059EC8(globalCtx->cameraPtrs[globalCtx->activeCamera]);

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_play.c", 4508);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/Gameplay_Draw.s")
#endif

void Gameplay_Main(GlobalContext* globalCtx) {
    D_8012D1F8 = &globalCtx->state.input[0];

    DebugDisplay_Init();

    if (1 && HREG(63)) {
        LOG_NUM("1", 1, "../z_play.c", 4556);
    }

    if ((HREG(80) == 10) && (HREG(94) != 10)) {
        HREG(81) = 1;
        HREG(82) = 1;
        HREG(83) = 1;
        HREG(84) = 3;
        HREG(85) = 1;
        HREG(86) = 1;
        HREG(87) = 1;
        HREG(88) = 1;
        HREG(89) = 1;
        HREG(90) = 15;
        HREG(91) = 1;
        HREG(92) = 1;
        HREG(93) = 1;
        HREG(94) = 10;
    }

    if ((HREG(80) != 10) || (HREG(81) != 0)) {
        Gameplay_Update(globalCtx);
    }

    if (1 && HREG(63)) {
        LOG_NUM("1", 1, "../z_play.c", 4583)
    }

    Gameplay_Draw(globalCtx);

    if (1 && HREG(63)) {
        LOG_NUM("1", 1, "../z_play.c", 4587);
    }
}

// original name: "Game_play_demo_mode_check"
s32 Gameplay_InCsMode(GlobalContext* globalCtx) {
    return (globalCtx->csCtx.state != 0) || func_8008E988(globalCtx);
}

#ifdef NON_MATCHING
// saved register usage differences and possibly stack usage or regalloc differences
f32 func_800BFCB8(GlobalContext* globalCtx, MtxF* mf, Vec3f* vec) {
    PosRot sp50;
    f32 temp_f0;
    f32 phi_f12;
    f32 phi_f16;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;

    sp40 = func_8003CB30(globalCtx, &globalCtx->colCtx, &sp50, mf);

    if (sp40 > -32000.0f) {
        sp3C = sp50.rot.x * (1.0f / 32767.0f);
        sp38 = sp50.rot.y * (1.0f / 32767.0f);
        sp34 = sp50.rot.z * (1.0f / 32767.0f);

        temp_f0 = sqrtf(1.0f - SQ(sp3C));

        if (temp_f0 != 0.0f) {
            phi_f12 = sp38 * temp_f0;
            phi_f16 = -sp34 * temp_f0;
        } else {
            phi_f12 = 0.0f;
            phi_f16 = 0.0f;
        }

        mf->xx = temp_f0;
        mf->xy = -sp3C * phi_f12;
        mf->xz = sp3C * phi_f16;
        mf->yx = sp3C;
        mf->yy = sp38;
        mf->zy = phi_f16;
        mf->zz = phi_f12;
        mf->xw = 0.0f;
        mf->yw = 0.0f;
        mf->zx = 0.0f;
        mf->zw = 0.0f;
        mf->yz = sp34;
        mf->wx = vec->x;
        mf->wy = sp40;
        mf->wz = vec->z;
        mf->ww = 1.0f;
    } else {
        mf->yx = 0.0f;
        mf->xz = 0.0f;
        mf->xy = 0.0f;
        mf->xx = 0.0f;
        mf->zw = 0.0f;
        mf->zx = 0.0f;
        mf->yw = 0.0f;
        mf->xw = 0.0f;
        mf->zz = 0.0f;
        mf->zy = 0.0f;
        mf->yz = 0.0f;
        mf->yy = 1.0f;
        mf->wx = vec->x;
        mf->wy = vec->y;
        mf->wz = vec->z;
        mf->ww = 1.0f;
    }

    return sp40;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BFCB8.s")
#endif

void* Gameplay_LoadFile(GlobalContext* globalCtx, RomFile* file) {
    u32 size;
    void* allocp;

    size = file->vromEnd - file->vromStart;
    allocp = Game_Alloc(&globalCtx->state, size, "../z_play.c", 4692);
    DmaMgr_SendRequest1(allocp, file->vromStart, size, "../z_play.c", 4694);

    return allocp;
}

void Gameplay_InitSkybox(GlobalContext* globalCtx, s16 skyboxId) {
    func_800B0E50(globalCtx, &globalCtx->skyboxCtx, skyboxId);
    func_8006F140(globalCtx, &globalCtx->envCtx, 0);
}

void Gameplay_InitScene(GlobalContext* globalCtx, s32 spawn) {
    globalCtx->curSpawn = spawn;
    globalCtx->linkActorEntry = NULL;
    globalCtx->unk_11DFC = NULL;
    globalCtx->setupEntranceList = NULL;
    globalCtx->setupExitList = NULL;
    globalCtx->cUpElfMsgs = NULL;
    globalCtx->setupPathList = NULL;
    globalCtx->nbSetupActors = 0;
    Object_InitBank(globalCtx, &globalCtx->objectCtx);
    func_8007A614(globalCtx, &globalCtx->lightCtx);
    func_80098CBC(globalCtx, &globalCtx->nbTransitionActors);
    func_80096FD4(globalCtx, &globalCtx->roomCtx.curRoom);
    YREG(15) = 0;
    gSaveContext.worldMapArea = 0;
    Scene_ExecuteCommands(globalCtx, globalCtx->sceneSegment);
    Gameplay_InitSkybox(globalCtx, globalCtx->skyboxId);
}

void Gameplay_SpawnScene(GlobalContext* globalCtx, s32 sceneNum, s32 spawn) {
    Scene* scene = &gSceneTable[sceneNum];

    scene->unk_13 = 0;
    globalCtx->loadedScene = scene;
    globalCtx->sceneNum = sceneNum;
    globalCtx->sceneConfig = scene->config;

    osSyncPrintf("\nSCENE SIZE %fK\n", (scene->sceneFile.vromEnd - scene->sceneFile.vromStart) * 0.0009765625f);

    globalCtx->sceneSegment = Gameplay_LoadFile(globalCtx, &scene->sceneFile);
    scene->unk_13 = 0;
    if (globalCtx->sceneSegment == NULL) {
        __assert("this->sceneSegment != NULL", "../z_play.c", 4960);
    }
    gSegments[2] = PHYSICAL_TO_VIRTUAL(globalCtx->sceneSegment);

    Gameplay_InitScene(globalCtx, spawn);

    osSyncPrintf("ROOM SIZE=%fK\n", func_80096FE8(globalCtx, &globalCtx->roomCtx) * 0.0009765625f);
}

void func_800C016C(GlobalContext* globalCtx, Vec3f* src, Vec3f* dest) {
    f32 temp;

    Matrix_Mult(&globalCtx->mf_11D60, MTXMODE_NEW);
    Matrix_MultVec3f(src, dest);

    temp = globalCtx->mf_11D60.ww +
           (globalCtx->mf_11D60.xw * src->x + globalCtx->mf_11D60.yw * src->y + globalCtx->mf_11D60.zw * src->z);

    dest->x = 160.0f + ((dest->x / temp) * 160.0f);
    dest->y = 120.0f - ((dest->y / temp) * 120.0f);
}

s16 Gameplay_CreateSubCamera(GlobalContext* globalCtx) {
    s16 i;

    for (i = 1; i < 4; i++) {
        if (globalCtx->cameraPtrs[i] == NULL) {
            break;
        }
    }

    if (i == 4) {
        osSyncPrintf(VT_COL(RED, WHITE) "camera control: error: fulled sub camera system area\n" VT_RST);
        return -1;
    }

    osSyncPrintf("camera control: " VT_BGCOL(CYAN) " " VT_COL(WHITE, BLUE) " create new sub camera [%d] " VT_BGCOL(
                     CYAN) " " VT_RST "\n",
                 i);

    globalCtx->cameraPtrs[i] = &globalCtx->cameras[i];
    func_80057C6C(globalCtx->cameraPtrs[i], &globalCtx->view, &globalCtx->colCtx, globalCtx);
    globalCtx->cameraPtrs[i]->unk_164 = i;

    return i;
}

s16 Gameplay_GetActiveCamId(GlobalContext* globalCtx) {
    return globalCtx->activeCamera;
}

void Gameplay_ChangeCameraStatus(GlobalContext* globalCtx, s16 camId, s16 status) {
    s16 camIdx = (camId == -1) ? globalCtx->activeCamera : camId;

    if (status == 7) {
        globalCtx->activeCamera = camIdx;
    }

    Camera_ChangeStatus(globalCtx->cameraPtrs[camIdx], status);
}

void Gameplay_ClearCamera(GlobalContext* globalCtx, s16 camId) {
    s16 camIdx = (camId == -1) ? globalCtx->activeCamera : camId;

    if (camIdx == 0) {
        osSyncPrintf(VT_COL(RED, WHITE) "camera control: error: never clear camera !!\n" VT_RST);
    }

    if (globalCtx->cameraPtrs[camIdx] != NULL) {
        Camera_ChangeStatus(globalCtx->cameraPtrs[camIdx], 0x100);
        globalCtx->cameraPtrs[camIdx] = NULL;
        osSyncPrintf("camera control: " VT_BGCOL(CYAN) " " VT_COL(WHITE, BLUE) " clear sub camera [%d] " VT_BGCOL(
                         CYAN) " " VT_RST "\n",
                     camIdx);
    } else {
        osSyncPrintf(VT_COL(RED, WHITE) "camera control: error: camera No.%d already cleared\n" VT_RST, camIdx);
    }
}

void Gameplay_ClearAllSubCameras(GlobalContext* globalCtx) {
    s16 i;

    for (i = 1; i < 4; i++) {
        if (globalCtx->cameraPtrs[i] != NULL) {
            Gameplay_ClearCamera(globalCtx, i);
        }
    }

    globalCtx->activeCamera = 0;
}

Camera* Gameplay_GetCamera(GlobalContext* globalCtx, s16 camId) {
    s16 camIdx = (camId == -1) ? globalCtx->activeCamera : camId;

    return globalCtx->cameraPtrs[camIdx];
}

s32 func_800C04D8(GlobalContext* globalCtx, s16 camId, Vec3f* arg2, Vec3f* arg3) {
    u32 ret;
    s16 camIdx = (camId == -1) ? globalCtx->activeCamera : camId;
    Camera* camera;
    Player* player;

    camera = globalCtx->cameraPtrs[camIdx];

    ret = func_8005AA90(camera, 1, arg2);
    ret *= 2;
    ret |= func_8005AA90(camera, 2, arg3);

    if (1) {} // Necessary to match

    camera->unk_DC = Math3D_Vec3f_DistXYZ(arg2, arg3);

    player = camera->player;
    if (player != NULL) {
        camera->unk_E4.x = arg2->x - player->actor.posRot.pos.x;
        camera->unk_E4.y = arg2->y - player->actor.posRot.pos.y;
        camera->unk_E4.z = arg2->z - player->actor.posRot.pos.z;
    } else {
        camera->unk_E4.x = camera->unk_E4.y = camera->unk_E4.z = 0.0f;
    }

    camera->unk_100 = 0.01f;

    return ret;
}

#ifdef NON_MATCHING
// missing an extra stack store/load instruction pair
s32 func_800C05E4(GlobalContext* globalCtx, s16 camId, Vec3f* arg2, Vec3f* arg3, Vec3f* arg4) {
    u32 ret;
    s16 camIdx = (camId == -1) ? globalCtx->activeCamera : camId;
    Camera* camera;
    Player* player;

    camera = globalCtx->cameraPtrs[camIdx];

    if (1) {} // Probably necessary to match

    ret = func_8005AA90(camera, 1, arg2);
    ret *= 2;
    ret |= func_8005AA90(camera, 2, arg3);
    ret *= 2;
    ret |= func_8005AA90(camera, 4, arg4);

    camera->unk_DC = func_800CB678(arg2, arg3);

    player = camera->player;
    if (player != NULL) {
        camera->unk_E4.x = arg2->x - player->actor.posRot.pos.x;
        camera->unk_E4.y = arg2->y - player->actor.posRot.pos.y;
        camera->unk_E4.z = arg2->z - player->actor.posRot.pos.z;
    } else {
        camera->unk_E4.x = camera->unk_E4.y = camera->unk_E4.z = 0.0f;
    }

    camera->unk_100 = 0.01f;

    return ret;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C05E4.s")
#endif

#ifdef NON_MATCHING
// missing an extra move instruction
s32 func_800C0704(GlobalContext* globalCtx, s16 camId, f32 arg2) {
    return (func_8005AA90(globalCtx->cameraPtrs[camId], 32, &arg2) & 1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0704.s")
#endif

s32 func_800C0744(GlobalContext* globalCtx, s16 camId, s16 arg2) {
    s16 camIdx = (camId == -1) ? globalCtx->activeCamera : camId;
    Camera* camera;

    camera = globalCtx->cameraPtrs[camIdx];
    camera->unk_15A = arg2;

    return 1;
}

void func_800C078C(GlobalContext* globalCtx, s16 camId1, s16 camId2) {
    s16 camIdx2 = (camId2 == -1) ? globalCtx->activeCamera : camId2;
    s16 camIdx1 = (camId1 == -1) ? globalCtx->activeCamera : camId1;

    func_8005AE64(globalCtx->cameraPtrs[camIdx1], globalCtx->cameraPtrs[camIdx2]);
}

void func_800C0808(GlobalContext* globalCtx, s16 camId, s32 arg2, s16 arg3) {
    Camera* camera;
    s16 camIdx = (camId == -1) ? globalCtx->activeCamera : camId;

    camera = globalCtx->cameraPtrs[camIdx];
    func_80058148(camera, arg2);
    func_8005A77C(camera, arg3);
}

void func_800C0874(GlobalContext* globalCtx, s16 camId, s16 arg2) {
    func_8005A77C(Gameplay_GetCamera(globalCtx, camId), arg2);
}

void func_800C08AC(GlobalContext* globalCtx, s16 camId, s16 arg2) {
    s16 camIdx = (camId == -1) ? globalCtx->activeCamera : camId;
    s16 i;

    Gameplay_ClearCamera(globalCtx, camIdx);

    for (i = 1; i < 4; i++) {
        if (globalCtx->cameraPtrs[i] != NULL) {
            osSyncPrintf(
                VT_COL(RED, WHITE) "camera control: error: return to main, other camera left. %d cleared!!\n" VT_RST,
                i);
            Gameplay_ClearCamera(globalCtx, i);
        }
    }

    if (arg2 <= 0) {
        Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
        globalCtx->cameraPtrs[0]->unk_14E = globalCtx->cameraPtrs[0]->unk_162 = 0;
    } else {
        func_800800F8(globalCtx, 1020, arg2, NULL, 0);
    }
}

s16 func_800C09A4(GlobalContext* globalCtx, s16 camId) {
    Camera* camera = globalCtx->cameraPtrs[camId];

    if (camera != NULL) {
        return camera->unk_130;
    } else {
        return -1;
    }
}

s16 func_800C09D8(GlobalContext* globalCtx, s16 camId, s16 arg2) {
    Camera* camera = globalCtx->cameraPtrs[camId];

    if (camera != NULL) {
        return 0;
    } else if (camera->unk_130 != arg2) {
        return 0;
    } else if (camera->unk_140 != 7) {
        return 2;
    } else {
        return 1;
    }
}

void Gameplay_SaveSceneFlags(GlobalContext* globalCtx) {
    SaveSceneFlags* sceneFlags = &gSaveContext.sceneFlags[globalCtx->sceneNum];

    sceneFlags->chest = globalCtx->actorCtx.flags.chest;
    sceneFlags->swch = globalCtx->actorCtx.flags.swch;
    sceneFlags->clear = globalCtx->actorCtx.flags.clear;
    sceneFlags->collect = globalCtx->actorCtx.flags.collect;
}

void Gameplay_SetRespawnData(GlobalContext* globalCtx, s32 respawnMode, s16 entranceIndex, s32 roomIndex,
                             s32 playerParams, Vec3f* pos, s16 yaw) {
    RespawnData* respawnData = &gSaveContext.respawn[respawnMode];

    respawnData->entranceIndex = entranceIndex;
    respawnData->roomIndex = roomIndex;
    respawnData->pos = *pos;
    respawnData->yaw = yaw;
    respawnData->playerParams = playerParams;
    respawnData->tempSwchFlags = globalCtx->actorCtx.flags.tempSwch;
    respawnData->tempCollectFlags = globalCtx->actorCtx.flags.tempCollect;
}

void Gameplay_SetupRespawnPoint(GlobalContext* globalCtx, s32 respawnMode, s32 playerParams) {
    Player* player = PLAYER;
    s32 entranceIndex;
    s8 roomIndex;

    if ((globalCtx->sceneNum != SCENE_YOUSEI_IZUMI_TATE) && (globalCtx->sceneNum != SCENE_KAKUSIANA)) {
        roomIndex = globalCtx->roomCtx.curRoom.num;
        entranceIndex = gSaveContext.entranceIndex;
        Gameplay_SetRespawnData(globalCtx, respawnMode, entranceIndex, roomIndex, playerParams,
                                &player->actor.posRot.pos, player->actor.shape.rot.y);
    }
}

void Gameplay_TriggerVoidOut(GlobalContext* globalCtx) {
    gSaveContext.respawn[RESPAWN_MODE_DOWN].tempSwchFlags = globalCtx->actorCtx.flags.tempSwch;
    gSaveContext.respawn[RESPAWN_MODE_DOWN].tempCollectFlags = globalCtx->actorCtx.flags.tempCollect;
    gSaveContext.respawnFlag = 1;
    globalCtx->sceneLoadFlag = 0x14;
    globalCtx->nextEntranceIndex = gSaveContext.respawn[0].entranceIndex;
    globalCtx->fadeTransition = 2;
}

void Gameplay_LoadToLastEntrance(GlobalContext* globalCtx) {
    gSaveContext.respawnFlag = -1;
    globalCtx->sceneLoadFlag = 0x14;

    if ((globalCtx->sceneNum == SCENE_GANON_SONOGO) || (globalCtx->sceneNum == SCENE_GANON_FINAL) ||
        (globalCtx->sceneNum == SCENE_GANONTIKA_SONOGO) || (globalCtx->sceneNum == SCENE_GANON_DEMO)) {
        globalCtx->nextEntranceIndex = 0x043F;
        Item_Give(globalCtx, ITEM_SWORD_MASTER);
    } else if ((gSaveContext.entranceIndex == 0x028A) || (gSaveContext.entranceIndex == 0x028E) ||
               (gSaveContext.entranceIndex == 0x0292) || (gSaveContext.entranceIndex == 0x0476)) {
        globalCtx->nextEntranceIndex = 0x01F9;
    } else {
        globalCtx->nextEntranceIndex = gSaveContext.entranceIndex;
    }

    globalCtx->fadeTransition = 2;
}

void Gameplay_TriggerRespawn(GlobalContext* globalCtx) {
    Gameplay_SetupRespawnPoint(globalCtx, RESPAWN_MODE_DOWN, 0xDFF);
    Gameplay_LoadToLastEntrance(globalCtx);
}

s32 func_800C0CB8(GlobalContext* globalCtx) {
    return (globalCtx->roomCtx.curRoom.mesh->polygon.type != 1) && (YREG(15) != 0x20) && (YREG(15) != 0x30) &&
           (YREG(15) != 0x40) && (globalCtx->sceneNum != SCENE_HAIRAL_NIWA);
}

s32 func_800C0D28(GlobalContext* globalCtx) {
    return (globalCtx->sub_7B8.unk_0 != 0);
}

s32 func_800C0D34(GlobalContext* globalCtx, Actor* actor, s16* yaw) {
    TransitionActorEntry* transitionActor;

    if (actor->type != ACTORTYPE_DOOR) {
        return 0;
    }

    transitionActor = &globalCtx->transitionActorList[(u16)actor->params >> 10];

    if (transitionActor->backRoom == transitionActor->frontRoom) {
        return 0;
    }

    if (actor->room == transitionActor->frontRoom) {
        *yaw = actor->shape.rot.y;
    } else {
        *yaw = actor->shape.rot.y + 0x8000;
    }

    return 1;
}

s32 func_800C0DB4(GlobalContext* globalCtx, Vec3f* arg1) {
    UNK_TYPE sp3C;
    CollisionPoly* sp38;
    Vec3f sp2C;
    s32 sp28;

    sp2C = *arg1;

    if ((func_8004213C(globalCtx, &globalCtx->colCtx, sp2C.x, sp2C.z, &sp2C.y, &sp3C) == 1) && (arg1->y < sp2C.y) &&
        (func_8003C940(&globalCtx->colCtx, &sp38, &sp28, &sp2C) != -32000.0f)) {
        return 1;
    } else {
        return 0;
    }
}