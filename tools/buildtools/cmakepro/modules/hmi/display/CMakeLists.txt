project(display)

################################################################################
# Source groups
################################################################################
set(FreeType__include
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/config/ftconfig.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/config/ftheader.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/config/ftmodule.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/config/ftoption.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/config/ftstdlib.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/freetype.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftadvanc.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftbbox.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftbdf.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftbitmap.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftcache.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftchapters.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftcid.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/fterrdef.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/fterrors.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftgasp.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftglyph.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftgxval.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftgzip.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftimage.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftincrem.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftlcdfil.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftlist.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftlzw.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftmac.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftmm.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftmodapi.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftmoderr.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftotval.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftoutln.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftpfr.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftrender.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftsizes.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftsnames.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftstroke.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftsynth.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftsystem.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/fttrigon.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/fttypes.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftwinfnt.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ftxf86.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/autohint.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftcalc.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftdebug.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftdriver.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftgloadr.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftmemory.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftobjs.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftpic.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftrfork.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftserv.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftstream.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/fttrace.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/ftvalid.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/internal.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/pcftypes.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/psaux.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/pshints.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svbdf.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svcid.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svgldict.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svgxval.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svkern.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svmm.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svotval.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svpfr.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svpostnm.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svpscmap.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svpsinfo.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svsfnt.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svttcmap.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svtteng.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svttglyf.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svwinfnt.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/services/svxf86nm.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/sfnt.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/t1types.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/internal/tttypes.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/t1tables.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ttnameid.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/tttables.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/tttags.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/freetype/ttunpat.h"
    "${HMI}/graphic_engine/source/utility/FreeType/include/ft2build.h"
)
source_group("FreeType\\include" FILES ${FreeType__include})

set(FreeType__src
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/basepic.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/basepic.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftadvanc.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftapi.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftbase.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftbase.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftbbox.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftbitmap.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftcalc.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftdbgmem.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftdebug.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftgloadr.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftglyph.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftinit.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftobjs.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftoutln.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftpic.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftrfork.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftsnames.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftstream.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftstroke.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftsynth.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftsystem.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/fttrigon.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/base/ftutil.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cff.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffcmap.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffcmap.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffdrivr.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffdrivr.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cfferrs.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffgload.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffgload.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffload.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffload.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffobjs.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffobjs.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffparse.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffparse.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffpic.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cffpic.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cfftoken.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/cff/cfftypes.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshalgo.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshalgo.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshglob.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshglob.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshinter.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshmod.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshmod.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshnterr.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshpic.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshpic.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshrec.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/pshinter/pshrec.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/psnames/psmodule.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/psnames/psmodule.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/psnames/psnamerr.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/psnames/psnames.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/psnames/pspic.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/psnames/pspic.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/psnames/pstables.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/raster/ftmisc.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/raster/ftraster.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/raster/ftraster.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/raster/ftrend1.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/raster/ftrend1.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/raster/raster.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/raster/rasterrs.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/raster/rastpic.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/raster/rastpic.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/sfdriver.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/sfdriver.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/sferrors.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/sfnt.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/sfntpic.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/sfntpic.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/sfobjs.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/sfobjs.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttbdf.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttbdf.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttcmap.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttcmap.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttcmapc.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttkern.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttkern.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttload.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttload.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttmtx.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttmtx.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttpost.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttpost.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttsbit.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttsbit.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/sfnt/ttsbit0.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/smooth/ftgrays.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/smooth/ftgrays.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/smooth/ftsmerrs.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/smooth/ftsmooth.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/smooth/ftsmooth.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/smooth/ftspic.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/smooth/ftspic.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/smooth/smooth.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/truetype.c"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttdriver.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttdriver.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/tterrors.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttgload.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttgload.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttgxvar.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttgxvar.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttinterp.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttinterp.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttobjs.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttobjs.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttpic.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttpic.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttpload.c.h"
    "${HMI}/graphic_engine/source/utility/FreeType/src/truetype/ttpload.h"
)
source_group("FreeType\\src" FILES ${FreeType__src})

set(SystemManager
    "${HMI}/graphic_engine/source/display/module/system_manager/AVMSystemControllerInter.cpp"
    "${HMI}/graphic_engine/source/display/module/system_manager/AVMSystemControllerInter.h"
    "${HMI}/graphic_engine/source/display/module/system_manager/AVMSystemHMIController.cpp"
    "${HMI}/graphic_engine/source/display/module/system_manager/AVMSystemHMIController.h"
    "${HMI}/graphic_engine/source/display/module/system_manager/AVMSystemMgrController.cpp"
    "${HMI}/graphic_engine/source/display/module/system_manager/AVMSystemMgrController.h"
    "${HMI}/graphic_engine/source/display/module/system_manager/HSM.cpp"
    "${HMI}/graphic_engine/source/display/module/system_manager/HSM.h"
    "${HMI}/graphic_engine/source/display/module/system_manager/sp_venus_comm_def.h"
    "${HMI}/graphic_engine/source/display/module/system_manager/SP_VENUS_SM_INFS.cpp"
    "${HMI}/graphic_engine/source/display/module/system_manager/SP_VENUS_SM_INFS.h"
    "${HMI}/graphic_engine/source/display/module/system_manager/ViewStateMachine.cpp"
    "${HMI}/graphic_engine/source/display/module/system_manager/ViewStateMachine.h"
)
source_group("SystemManager" FILES ${SystemManager})

set(XrCore__3rd
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/bmp.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/bmp.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/Camera.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/Camera.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/Font.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/Font.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/GLMetaseq.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/GLMetaseq.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/GpuModelCommon.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/hdr_images.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/hdr_images.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/hhdds.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/hhdds_internal.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/ModelOFG.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/ModelOFG.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/motion.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/motion.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/prefilter.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/PrimitiveGenerator.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/PrimitiveGenerator.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/rgbe.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/rgbe.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/tga.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/tga.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/XrFileLoader.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/XrFileLoader.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/3rd/XrModelLoader.cpp"
)
source_group("XrCore\\3rd" FILES ${XrCore__3rd})

set(XrCore__Common
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/stringHash.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/stringHash.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XrAABBox.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/xrDataStruct.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/xrDataStruct.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XrFunctor.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XrHashMap.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XrInternal.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XrInternal.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XrMathEx.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XrMathEx.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XRMatrix.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XRMatrix.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XRQuaternion.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XRQuaternion.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XRString.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XRString.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XRVector.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Common/XRVector.h"
)
source_group("XrCore\\Common" FILES ${XrCore__Common})

set(XrCore__Effect
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Effect/blur_shader_generator.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Effect/blur_shader_generator.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Effect/DefaultProcessDelegate.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Effect/DefaultRenderDelegate.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Effect/DefaultRenderDelegate.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Effect/PostProcessing.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Effect/PostProcessing.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Effect/RenderingUtility.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Effect/RenderingUtility.h"
)
source_group("XrCore\\Effect" FILES ${XrCore__Effect})

set(XrCore__External
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IAnimationDelegate.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IAnimationManager.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IAProperty.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/ICamera.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IDeviceManager.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IEventResponder.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IFragmentProgram.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IKeyAnimation.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/ILayer.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/ILayoutPanel.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/ILight.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IMaterial.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IMaterialEx.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IMesh.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/INode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IObject.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IPass.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IPicker.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IPickerManager.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IPostProcessingNode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IProcessNode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IRenderDelegate.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IRenderEffect.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IRenderNode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IRenderTarget.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IResource.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/ISceneNode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IScrollingAnimation.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IScrollPanel.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/ISpirit.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/ITechnique.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/ITextLayer.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/ITextureDelegate.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IUINode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IUpdateDelegate.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IVectorLayer.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IVertexProgram.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IWindow.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/IXrCore.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/xrEnum.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/XrHeaders.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/xrIntrinsic.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/xrTypes.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/External/xrUtility.h"
)
source_group("XrCore\\External" FILES ${XrCore__External})

set(XrCore__Platform
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Platform/EGLInit.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Platform/xrConfig.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Platform/XrCrt.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Platform/XrMath.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Platform/XrOS.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Platform/XrOS.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Platform/XrPath.h"
)
source_group("XrCore\\Platform" FILES ${XrCore__Platform})

set(XrCore__Render
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/CRenderManager.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/CRenderManager.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/intrinsic.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/XrBatchRender.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/XrBatchRender.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/XrRender.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/XrRenderEffect.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/XrRenderEffect.h"
)
source_group("XrCore\\Render" FILES ${XrCore__Render})

set(XrCore__Render__GLES2Render
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CGLESShaderHelper.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CGLESShaderHelper.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CIndexBuffer.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CIndexBuffer.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CRenderContext.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CRenderContext.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CRenderDevice.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CRenderDevice.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CRenderState.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CRenderState.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CRenderTarget.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CRenderTarget.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CSampler.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CSampler.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CShaderObject.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CShaderObject.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CSwapChain.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CSwapChain.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CTexture.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CTexture.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CUniformBlock.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CUniformBlock.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CVertexBuffer.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CVertexBuffer.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CVertexLayout.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/CVertexLayout.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/GLES2Render.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/hhdds.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Render/utilityGLES2.h"
)
source_group("XrCore\\Render\\GLES2Render" FILES ${XrCore__Render__GLES2Render})

set(XrCore__Render__GLES2Shaders
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Shaders/GLES2PreRendering.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Shaders/GLES2Shaders.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Shaders/GLES2ShadersForwardRenderingRGBA.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Shaders/GLES2ShadersForwardRenderingRGBE.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Shaders/GLES2ShadersPostProcessingRGBE.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/Render/GLES2Shaders/GLES2UIShaders.cpp"
)
source_group("XrCore\\Render\\GLES2Shaders" FILES ${XrCore__Render__GLES2Shaders})

set(XrCore__XrCore
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrCore/CAnimationManager.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrCore/CAnimationManager.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrCore/CDeviceManager.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrCore/CDeviceManager.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrCore/CPickerManager.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrCore/CXrCore.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrCore/CXrCore.h"
)
source_group("XrCore\\XrCore" FILES ${XrCore__XrCore})

set(XrCore__XrNode
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/CBaseNode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/CNode.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/CNode.h"
)
source_group("XrCore\\XrNode" FILES ${XrCore__XrNode})

set(XrCore__XrNode__Animation
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CAnimationStack.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CAnimationStack.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CAProperty.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CAProperty.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CAQuaternion.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CAQuaternion.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CATransition.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CATransition.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CBaseAnimation.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CBaseAnimation.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CKeyAnimation.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CKeyAnimation.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CScrollingAnimation.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CScrollingAnimation.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CSeriesGenerator.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Animation/CSeriesGenerator.h"
)
source_group("XrCore\\XrNode\\Animation" FILES ${XrCore__XrNode__Animation})

set(XrCore__XrNode__Camera
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Camera/CCamera.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Camera/CCamera.h"
)
source_group("XrCore\\XrNode\\Camera" FILES ${XrCore__XrNode__Camera})

set(XrCore__XrNode__Intersect
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Intersect/CPicker.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Intersect/CScenePicker.h"
)
source_group("XrCore\\XrNode\\Intersect" FILES ${XrCore__XrNode__Intersect})

set(XrCore__XrNode__Layer
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CChineseTextLayer.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CChineseTextLayer.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CLayer.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CLayer.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CLayoutModule.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CLayoutModule.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CLayoutPanel.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CLayoutPanel.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CScrollModule.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CScrollModule.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CScrollPanel.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CScrollPanel.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CSpirit.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CSpirit.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CTextLayer.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Layer/CTextLayer.h"
)
source_group("XrCore\\XrNode\\Layer" FILES ${XrCore__XrNode__Layer})

set(XrCore__XrNode__Lighting
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Lighting/CLight.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Lighting/CLight.h"
)
source_group("XrCore\\XrNode\\Lighting" FILES ${XrCore__XrNode__Lighting})

set(XrCore__XrNode__Material
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Material/CMaterial.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Material/CMaterial.h"
)
source_group("XrCore\\XrNode\\Material" FILES ${XrCore__XrNode__Material})

set(XrCore__XrNode__Mesh
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Mesh/CMesh.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Mesh/CMesh.h"
)
source_group("XrCore\\XrNode\\Mesh" FILES ${XrCore__XrNode__Mesh})

set(XrCore__XrNode__Scene
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CPostProcessingNode.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CPostProcessingNode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CRenderGroup.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CRenderGroup.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CRenderNode.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CRenderNode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CSceneNode.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CSceneNode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CSceneVisitor.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CSceneVisitor.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CSkeletonManager.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CSkeletonManager.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CUINode.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CUINode.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CUIVisitor.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrNode/Scene/CUIVisitor.h"
)
source_group("XrCore\\XrNode\\Scene" FILES ${XrCore__XrNode__Scene})

set(XrCore__XrResource
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrResource/CDataStream.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrResource/CDataStream.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrResource/CFileHandler.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrResource/CFileHandler.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrResource/CNodeSerializer.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrResource/CNodeSerializer.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrResource/CResource.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrResource/CResource.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrResource/StringUtil.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrResource/StringUtil.h"
)
source_group("XrCore\\XrResource" FILES ${XrCore__XrResource})

set(XrCore__XrUILibrary
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/2DShaper.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/2DShaper.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CEventResponder.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CEventResponder.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrBaseView.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrBaseView.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrBorder.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrBorder.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrButton.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrButton.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrCellular.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrCellular.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrDivider.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrDivider.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrGlowButton.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrGlowButton.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrGrid.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrGrid.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrNavigator.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrNavigator.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrPanel.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrPanel.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrSelector.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrSelector.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrSlideBar.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrSlideBar.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrSlider.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrSlider.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrTextLabel.cpp"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrTextLabel.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/CXrUILibrary.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/IActionTrigger.h"
    "${HMI}/graphic_engine/source/utility/XrCore/XrSrc/XrUILibrary/XrUILibrary.h"
)
source_group("XrCore\\XrUILibrary" FILES ${XrCore__XrUILibrary})

set(egl
    "${HMI}/graphic_engine/source/display/module/egl/IGraphicEnv.h"
    "${HMI}/graphic_engine/source/display/module/egl/windows/CX64GraphicEnv.cpp"
    "${HMI}/graphic_engine/source/display/module/egl/windows/CX64GraphicEnv.h"
)
source_group("egl" FILES ${egl})

set(luminb
    "${HMI}/graphic_engine/source/stitcher/src/arm_basic_op.cpp"
    "${HMI}/graphic_engine/source/stitcher/src/arm_basic_op.h"
    "${HMI}/graphic_engine/source/stitcher/src/dot_compute.s"
    "${HMI}/graphic_engine/source/stitcher/src/luminance_balance.cpp"
    "${HMI}/graphic_engine/source/stitcher/src/luminance_balance.h"
    "${HMI}/graphic_engine/source/stitcher/src/luminance_balance_embed_interface.cpp"
    "${HMI}/graphic_engine/source/stitcher/src/luminance_balance_embed_interface.h"
    "${HMI}/graphic_engine/source/stitcher/src/luminb_result.h"
)
source_group("luminb" FILES ${luminb})

set(render
    "${HMI}/graphic_engine/source/display/module/render/AVM_INTFS.cpp"
    "${HMI}/graphic_engine/source/display/module/render/AVMData.cpp"
    "${HMI}/graphic_engine/source/display/module/render/AVMData.h"
    "${HMI}/graphic_engine/source/display/module/render/bev_config.cpp"
    "${HMI}/graphic_engine/source/display/module/render/bev_config.h"
    "${HMI}/graphic_engine/source/display/module/render/cam_lut_data_linear.c"
    "${HMI}/graphic_engine/source/display/module/render/camera_model.c"
    "${HMI}/graphic_engine/source/display/module/render/camera_model.h"
    "${HMI}/graphic_engine/source/display/module/render/commondef.h"
    "${HMI}/graphic_engine/source/display/module/render/DataStruct.h"
    "${HMI}/graphic_engine/source/display/module/render/fileloader.cpp"
    "${HMI}/graphic_engine/source/display/module/render/fileloader.h"
    "${HMI}/graphic_engine/source/display/module/render/GlSV2D.cpp"
    "${HMI}/graphic_engine/source/display/module/render/GlSV2D.h"
    "${HMI}/graphic_engine/source/display/module/render/GPU_Module_Interface.cpp"
    "${HMI}/graphic_engine/source/display/module/render/gpu_public_data_struct.h"
    "${HMI}/graphic_engine/source/display/module/render/ICameraSourceRender.h"
    "${HMI}/graphic_engine/source/display/module/render/iv_options.cpp"
    "${HMI}/graphic_engine/source/display/module/render/iv_options.h"
    "${HMI}/graphic_engine/source/display/module/render/reuse_gpu.h"
    "${HMI}/graphic_engine/source/display/module/render/SVDelegate.h"
    "${HMI}/graphic_engine/source/display/module/render/SVNode2DStich.cpp"
    "${HMI}/graphic_engine/source/display/module/render/SVNode2DStich.h"
)
source_group("render" FILES ${render})

set(render__DataSource
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVM2DLUT.cpp"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVM2DLUT.h"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVMCameraExparam.cpp"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVMCameraExparam.h"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVMCameraInternal.cpp"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVMCameraInternal.h"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVMCANData.cpp"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVMCANData.h"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVMLuminanceData.cpp"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVMLuminanceData.h"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVMUSCData.cpp"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/AVMUSCData.h"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/CAvmRenderDataBase.cpp"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/CAvmRenderDataBase.h"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/ParseCalibData.cpp"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/ParseCalibData.h"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/smc.h"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/SMCData.cpp"
    "${HMI}/graphic_engine/source/display/module/render/DataSource/SMCData.h"
)
source_group("render\\DataSource" FILES ${render__DataSource})

set(render__HMI
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMI2DFanShaped.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMI2DFanShaped.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIAnnularProgress.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIAnnularProgress.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIBSDRadarIcon.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIBSDRadarIcon.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIButton.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIButton.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMICarport.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMICarport.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMICarportAnimation.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMICarportAnimation.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIDialog.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIDialog.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIGuideLine.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIGuideLine.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIIconBox.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIIconBox.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIImageGridList.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIImageGridList.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIImageIcon.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIImageIcon.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMILDWLine.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMILDWLine.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMILicense.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMILicense.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIPolygonBox.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIPolygonBox.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIProcessBar.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIProcessBar.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIScroll.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIScroll.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIScrollBox.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMIScrollBox.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMISingleviewRect.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMISingleviewRect.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMISlamLine.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMISlamLine.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMITextBox.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMITextBox.h"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMITextEdit.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMI/HMITextEdit.h"
)
source_group("render\\HMI" FILES ${render__HMI})

set(render__HMI__HMILayout
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVEp21MainHmi.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVEp21MainHmi.h"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVHmiFactory.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVHmiFactory.h"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVHmiIntent.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVHmiIntent.h"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVIC321MainHmi.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVIC321MainHmi.h"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVIC321MainHmi_Utility.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVICU3AVMDefines.h"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVICU3GuideLineHmi.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVICU3GuideLineHmi.h"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVICU3MainHmi.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVICU3MainHmi.h"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVICU3RadarHmi.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/CSVSMCVAVMDefines.h"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/ISVHmi.cpp"
    "${HMI}/graphic_engine/source/display/module/render/HMILayout/ISVHmi.h"
)
source_group("render\\HMI\\HMILayout" FILES ${render__HMI__HMILayout})

set(render__RenderNode
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAPAObjectViewNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAPAObjectViewNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvm3dActualAPAViewNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvm3dActualAPAViewNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvm3dViewNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvm3dViewNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmDoubleWheelSideView.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmDoubleWheelSideView.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmFrontCCOView.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmFrontCCOView.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmFrontFishWheelView.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmFrontFishWheelView.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmFrontRearLinearView.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmFrontRearLinearView.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmFrontWheelView.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmFrontWheelView.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmLeftLinearView.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmLeftLinearView.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmLinearViewNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmLinearViewNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmLogicManager.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmLogicManager.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmMattsView.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmMattsView.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmObjectViewNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmObjectViewNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmQuadrangleSingleViewNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmQuadrangleSingleViewNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmRearFishWheelView.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmRearFishWheelView.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmRearWheelView.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmRearWheelView.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmRightLinearView.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmRightLinearView.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmSideStitcherNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmSideStitcherNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmSingleViewNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmSingleViewNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmStitchViewNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmStitchViewNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmStitchViewTextureNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmStitchViewTextureNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmTimeStitcherNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmTimeStitcherNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmViewControlModel.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmViewControlModel.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmViewSurfaceNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmViewSurfaceNode.h"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmVirtualStitchViewNode.cpp"
    "${HMI}/graphic_engine/source/display/module/render/RenderNode/CAvmVirtualStitchViewNode.h"
)
source_group("render\\RenderNode" FILES ${render__RenderNode})

set(render__VideoSource
    "${HMI}/graphic_engine/source/display/module/render/VideoSource/CImageCameraSourceRender.cpp"
    "${HMI}/graphic_engine/source/display/module/render/VideoSource/CImageCameraSourceRender.h"
)
source_group("render\\VideoSource" FILES ${render__VideoSource})

set(render__overlay_source
    "${HMI}/graphic_engine/source/display/module/render/OverlaySource/COverlayBase.cpp"
    "${HMI}/graphic_engine/source/display/module/render/OverlaySource/COverlayBase.h"
)
source_group("render\\overlay_source" FILES ${render__overlay_source})

set(stitcher
    "${HMI}/graphic_engine/source/stitcher/src/bev_stitcher.cpp"
    "${HMI}/graphic_engine/source/stitcher/src/bev_stitcher.h"
    "${HMI}/graphic_engine/source/stitcher/src/bev_stitcher_lut.cpp"
    "${HMI}/graphic_engine/source/stitcher/src/bev_stitcher_lut.h"
    "${HMI}/graphic_engine/source/stitcher/src/function_calculate_fusion_weight.cpp"
    "${HMI}/graphic_engine/source/stitcher/src/function_calculate_fusion_weight.h"
    "${HMI}/graphic_engine/source/stitcher/src/stitcher_embed_interface.cpp"
    "${HMI}/graphic_engine/source/stitcher/src/stitcher_embed_interface.h"
    "${HMI}/graphic_engine/source/stitcher/src/stitcher_interface.h"
    "${HMI}/graphic_engine/source/stitcher/src/stitcher_result.cpp"
    "${HMI}/graphic_engine/source/stitcher/src/stitcher_result.h"
)
source_group("stitcher" FILES ${stitcher})

set(src
    "${HMI}/graphic_engine/source/display/display.cpp"
    "${HMI}/graphic_engine/source/display/display_if.cpp"
    "${HMI}/graphic_engine/source/display/display_stdafx.cpp"
    "${HMI}/graphic_engine/source/display/module/render/vehicle_motion_model.cpp"
)
source_group("源文件" FILES ${src})

set(ALL_FILES
    ${FreeType__include}
    ${FreeType__src}
    ${SystemManager}
    ${XrCore__3rd}
    ${XrCore__Common}
    ${XrCore__Effect}
    ${XrCore__External}
    ${XrCore__Platform}
    ${XrCore__Render}
    ${XrCore__Render__GLES2Render}
    ${XrCore__Render__GLES2Shaders}
    ${XrCore__XrCore}
    ${XrCore__XrNode}
    ${XrCore__XrNode__Animation}
    ${XrCore__XrNode__Camera}
    ${XrCore__XrNode__Intersect}
    ${XrCore__XrNode__Layer}
    ${XrCore__XrNode__Lighting}
    ${XrCore__XrNode__Material}
    ${XrCore__XrNode__Mesh}
    ${XrCore__XrNode__Scene}
    ${XrCore__XrResource}
    ${XrCore__XrUILibrary}
    ${egl}
    ${luminb}
    ${render}
    ${render__DataSource}
    ${render__HMI}
    ${render__HMI__HMILayout}
    ${render__RenderNode}
    ${render__VideoSource}
    ${render__overlay_source}
    ${stitcher}
    ${src}
)


################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/display"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/cnn"
    "${COMM_PATH}/source/utility"
    "${COMM_PATH}/source/utility/avm"
    "${COMM_PATH}/source/utility/memory"
    "${COMM_PATH}/source/interface/avm"
    "${COMM_PATH}/source/utility/dim3"
    "${COMM_PATH}/source/utility/vehmdl"
    "${COMM_PATH}/source/interface/algo"
    "${COMM_PATH}/source/interface/smc"
    "${COMM_PATH}/source/interface/cv"
    "${COMM_PATH}/source/interface/cuda"
    "${COMM_PATH}/source/interface/math"
    "${COMM_PATH}/source/interface/gpu3d"
    "${COMM_PATH}/source/interface/ffmpeg"
    "${COMM_PATH}/source/interface/avpmap"
    "${COMM_PATH}/source/interface/iogateway"
    "${COMM_PATH}/source/interface"
    "${COMM_PATH}/thirdparty/cpptime;"
    "${HMI}/graphic_engine/source/display/module/egl;"
    "${HMI}/graphic_engine/source/utility/PowerVR_SDK/SDK_2019_R1.1/include;"
    "${HMI}/graphic_engine/source/display/module/egl/windows;"
    "${HMI}/graphic_engine/source/utility/FreeType/include;"
    "${HMI}/graphic_engine/source/utility/XrCore;"
    "${HMI}/graphic_engine/source/display/module/render;"
    "${HMI}/graphic_engine/source/"
    "${HMI}/graphic_engine/include"
    "${HMI}/graphic_engine/source/display/module/system_manager;"
    "${HMI}/graphic_engine/source/utility/"
    "${HMI}/graphic_engine/include/common"
    "${HMI}/graphic_engine/source/display/module/egl/windows"
    "${HMI}/graphic_engine/source/display/module/egl"
    "${COMM_PATH}/thirdparty/opencv410/include;"
    "${HMI}/graphic_engine/source/display/"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}

)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    #${gles_link_directories}
    ${opencv_link_directories}
    ${${PROJECT_NAME}_link_directories}
    "D:/work/orin/spaceos/spaceos_launcher/port/vc2019/x64/Release"
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "hmi/display")

set(LIBRARIES
    sp_comm
    frameworkbase
    libGLESv2
    libEGL
    ${opencv_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE 
                _DISPLAY_
                NDEBUG
                SPOS_WIN
                WIN32
                _CRT_SECURE_NO_WARNINGS
                _CRT_NONSTDC_NO_DEPRECATE
                MODULER_EXPORTS
                OPENCV=1
                _MBCS
                DISPLAY_EXPORTS
                _WINDOWS
                _USRDLL
    )
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "_DISPLAY_")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        # /MD;
                        /GL-;
                        /Oi;
                        /Gy;
                        /Od;
                        /sdl;
                        /W3;
                        /Y-;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                    /OPT:REF;
                    /OPT:ICF;
                    /INCREMENTAL:NO
                    /DEBUG;
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    frameworkbase
    sp_comm
)