LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi
LOCAL_MODULE := iconv
LOCAL_CFLAGS := \
	-Wno-multichar \
	-D_ANDROID \
	-DBUILDING_LIBICONV \
	-DIN_LIBRARY \
	-DLIBDIR="\"~/android-libs/usr/local/lib\"" 
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libiconv-1.13.1 \
	$(LOCAL_PATH)/libiconv-1.13.1/include \
	$(LOCAL_PATH)/libiconv-1.13.1/lib \
	$(LOCAL_PATH)/libiconv-1.13.1/libcharset/include
LOCAL_SRC_FILES := \
	libiconv-1.13.1/lib/iconv.c \
	libiconv-1.13.1/lib/relocatable.c \
	libiconv-1.13.1/lib/empty.cpp \
	libiconv-1.13.1/libcharset/lib/localcharset.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi
# find proj-4.8.0/ -name "*.c" | grep -Ev "tests|doc" | sort | awk '{ print "\t"$1" \\" }'
LOCAL_MODULE    := proj
LOCAL_C_INCLUDES := $(LOCAL_PATH)/proj-4.8.0/src
LOCAL_CFLAGS	:= -DJNI_ENABLED=1 \
	-D__ANDROID__ \
	-DPROJ_LIB="\"/sdcard/proj/\"" 
LOCAL_LDLIBS := -lm
LOCAL_LDLIBS += -llog 
LOCAL_SRC_FILES := \
	proj-4.8.0//src/PJ_aea.c \
	proj-4.8.0//src/PJ_aeqd.c \
	proj-4.8.0//src/PJ_airy.c \
	proj-4.8.0//src/PJ_aitoff.c \
	proj-4.8.0//src/PJ_august.c \
	proj-4.8.0//src/PJ_bacon.c \
	proj-4.8.0//src/PJ_bipc.c \
	proj-4.8.0//src/PJ_boggs.c \
	proj-4.8.0//src/PJ_bonne.c \
	proj-4.8.0//src/PJ_cass.c \
	proj-4.8.0//src/PJ_cc.c \
	proj-4.8.0//src/PJ_cea.c \
	proj-4.8.0//src/PJ_chamb.c \
	proj-4.8.0//src/PJ_collg.c \
	proj-4.8.0//src/PJ_crast.c \
	proj-4.8.0//src/PJ_denoy.c \
	proj-4.8.0//src/PJ_eck1.c \
	proj-4.8.0//src/PJ_eck2.c \
	proj-4.8.0//src/PJ_eck3.c \
	proj-4.8.0//src/PJ_eck4.c \
	proj-4.8.0//src/PJ_eck5.c \
	proj-4.8.0//src/PJ_eqc.c \
	proj-4.8.0//src/PJ_eqdc.c \
	proj-4.8.0//src/PJ_fahey.c \
	proj-4.8.0//src/PJ_fouc_s.c \
	proj-4.8.0//src/PJ_gall.c \
	proj-4.8.0//src/PJ_geos.c \
	proj-4.8.0//src/PJ_gins8.c \
	proj-4.8.0//src/PJ_gn_sinu.c \
	proj-4.8.0//src/PJ_gnom.c \
	proj-4.8.0//src/PJ_goode.c \
	proj-4.8.0//src/PJ_gstmerc.c \
	proj-4.8.0//src/PJ_hammer.c \
	proj-4.8.0//src/PJ_hatano.c \
	proj-4.8.0//src/PJ_healpix.c \
	proj-4.8.0//src/PJ_igh.c \
	proj-4.8.0//src/PJ_imw_p.c \
	proj-4.8.0//src/PJ_isea.c \
	proj-4.8.0//src/PJ_krovak.c \
	proj-4.8.0//src/PJ_labrd.c \
	proj-4.8.0//src/PJ_laea.c \
	proj-4.8.0//src/PJ_lagrng.c \
	proj-4.8.0//src/PJ_larr.c \
	proj-4.8.0//src/PJ_lask.c \
	proj-4.8.0//src/PJ_lcc.c \
	proj-4.8.0//src/PJ_lcca.c \
	proj-4.8.0//src/PJ_loxim.c \
	proj-4.8.0//src/PJ_lsat.c \
	proj-4.8.0//src/PJ_mbt_fps.c \
	proj-4.8.0//src/PJ_mbtfpp.c \
	proj-4.8.0//src/PJ_mbtfpq.c \
	proj-4.8.0//src/PJ_merc.c \
	proj-4.8.0//src/PJ_mill.c \
	proj-4.8.0//src/PJ_mod_ster.c \
	proj-4.8.0//src/PJ_moll.c \
	proj-4.8.0//src/PJ_natearth.c \
	proj-4.8.0//src/PJ_nell.c \
	proj-4.8.0//src/PJ_nell_h.c \
	proj-4.8.0//src/PJ_nocol.c \
	proj-4.8.0//src/PJ_nsper.c \
	proj-4.8.0//src/PJ_nzmg.c \
	proj-4.8.0//src/PJ_ob_tran.c \
	proj-4.8.0//src/PJ_ocea.c \
	proj-4.8.0//src/PJ_oea.c \
	proj-4.8.0//src/PJ_omerc.c \
	proj-4.8.0//src/PJ_ortho.c \
	proj-4.8.0//src/PJ_poly.c \
	proj-4.8.0//src/PJ_putp2.c \
	proj-4.8.0//src/PJ_putp3.c \
	proj-4.8.0//src/PJ_putp4p.c \
	proj-4.8.0//src/PJ_putp5.c \
	proj-4.8.0//src/PJ_putp6.c \
	proj-4.8.0//src/PJ_robin.c \
	proj-4.8.0//src/PJ_rpoly.c \
	proj-4.8.0//src/PJ_sconics.c \
	proj-4.8.0//src/PJ_somerc.c \
	proj-4.8.0//src/PJ_stere.c \
	proj-4.8.0//src/PJ_sterea.c \
	proj-4.8.0//src/PJ_sts.c \
	proj-4.8.0//src/PJ_tcc.c \
	proj-4.8.0//src/PJ_tcea.c \
	proj-4.8.0//src/PJ_tmerc.c \
	proj-4.8.0//src/PJ_tpeqd.c \
	proj-4.8.0//src/PJ_urm5.c \
	proj-4.8.0//src/PJ_urmfps.c \
	proj-4.8.0//src/PJ_vandg.c \
	proj-4.8.0//src/PJ_vandg2.c \
	proj-4.8.0//src/PJ_vandg4.c \
	proj-4.8.0//src/PJ_wag2.c \
	proj-4.8.0//src/PJ_wag3.c \
	proj-4.8.0//src/PJ_wag7.c \
	proj-4.8.0//src/PJ_wink1.c \
	proj-4.8.0//src/PJ_wink2.c \
	proj-4.8.0//src/aasincos.c \
	proj-4.8.0//src/adjlon.c \
	proj-4.8.0//src/bch2bps.c \
	proj-4.8.0//src/bchgen.c \
	proj-4.8.0//src/biveval.c \
	proj-4.8.0//src/dmstor.c \
	proj-4.8.0//src/emess.c \
	proj-4.8.0//src/gen_cheb.c \
	proj-4.8.0//src/geocent.c \
	proj-4.8.0//src/geod_for.c \
	proj-4.8.0//src/geod_inv.c \
	proj-4.8.0//src/geod_set.c \
	proj-4.8.0//src/jniproj.c \
	proj-4.8.0//src/mk_cheby.c \
	proj-4.8.0//src/multistresstest.c \
	proj-4.8.0//src/nad_cvt.c \
	proj-4.8.0//src/nad_init.c \
	proj-4.8.0//src/nad_intr.c \
	proj-4.8.0//src/p_series.c \
	proj-4.8.0//src/pj_apply_gridshift.c \
	proj-4.8.0//src/pj_apply_vgridshift.c \
	proj-4.8.0//src/pj_auth.c \
	proj-4.8.0//src/pj_ctx.c \
	proj-4.8.0//src/pj_datum_set.c \
	proj-4.8.0//src/pj_datums.c \
	proj-4.8.0//src/pj_deriv.c \
	proj-4.8.0//src/pj_ell_set.c \
	proj-4.8.0//src/pj_ellps.c \
	proj-4.8.0//src/pj_errno.c \
	proj-4.8.0//src/pj_factors.c \
	proj-4.8.0//src/pj_fwd.c \
	proj-4.8.0//src/pj_gauss.c \
	proj-4.8.0//src/pj_geocent.c \
	proj-4.8.0//src/pj_gridinfo.c \
	proj-4.8.0//src/pj_gridlist.c \
	proj-4.8.0//src/pj_init.c \
	proj-4.8.0//src/pj_initcache.c \
	proj-4.8.0//src/pj_inv.c \
	proj-4.8.0//src/pj_latlong.c \
	proj-4.8.0//src/pj_list.c \
	proj-4.8.0//src/pj_log.c \
	proj-4.8.0//src/pj_malloc.c \
	proj-4.8.0//src/pj_mlfn.c \
	proj-4.8.0//src/pj_msfn.c \
	proj-4.8.0//src/pj_mutex.c \
	proj-4.8.0//src/pj_open_lib.c \
	proj-4.8.0//src/pj_param.c \
	proj-4.8.0//src/pj_phi2.c \
	proj-4.8.0//src/pj_pr_list.c \
	proj-4.8.0//src/pj_qsfn.c \
	proj-4.8.0//src/pj_release.c \
	proj-4.8.0//src/pj_strerrno.c \
	proj-4.8.0//src/pj_transform.c \
	proj-4.8.0//src/pj_tsfn.c \
	proj-4.8.0//src/pj_units.c \
	proj-4.8.0//src/pj_utils.c \
	proj-4.8.0//src/pj_zpoly1.c \
	proj-4.8.0//src/proj_etmerc.c \
	proj-4.8.0//src/proj_mdist.c \
	proj-4.8.0//src/proj_rouss.c \
	proj-4.8.0//src/rtodms.c \
	proj-4.8.0//src/vector1.c
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
# -DOMIT_GEOS=0
# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi
LOCAL_MODULE    := spatialite
LOCAL_CFLAGS    := -D__ANDROID__ -Dfdatasync=fsync \
	-DSQLITE_ENABLE_RTREE -DOMIT_FREEXL \
	-DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS
LOCAL_LDLIBS	:= -llog 
LOCAL_C_INCLUDES := \
    libiconv-1.13.1/include \
    libiconv-1.13.1/libcharset/include \
    proj-4.8.0/src \
    libspatialite-4.1.0 \
    libspatialite-4.1.0/src/headers \
    geos-3.3.8/include \
    geos-3.3.8/capi \
    sqlite-amalgamation-3071700
LOCAL_SRC_FILES := \
	libspatialite-4.1.0/src/dxf/dxf_load_distinct.c \
	libspatialite-4.1.0/src/dxf/dxf_load_mixed.c \
	libspatialite-4.1.0/src/dxf/dxf_loader.c \
	libspatialite-4.1.0/src/dxf/dxf_parser.c \
	libspatialite-4.1.0/src/dxf/dxf_writer.c \
	libspatialite-4.1.0/src/gaiaaux/gg_sqlaux.c \
	libspatialite-4.1.0/src/gaiaaux/gg_utf8.c \
	libspatialite-4.1.0/src/gaiaexif/gaia_exif.c \
	libspatialite-4.1.0/src/gaiageo/gg_advanced.c \
	libspatialite-4.1.0/src/gaiageo/gg_endian.c \
	libspatialite-4.1.0/src/gaiageo/gg_ewkt.c \
	libspatialite-4.1.0/src/gaiageo/gg_extras.c \
	libspatialite-4.1.0/src/gaiageo/gg_geoJSON.c \
	libspatialite-4.1.0/src/gaiageo/gg_geodesic.c \
	libspatialite-4.1.0/src/gaiageo/gg_geometries.c \
	libspatialite-4.1.0/src/gaiageo/gg_geoscvt.c \
	libspatialite-4.1.0/src/gaiageo/gg_gml.c \
	libspatialite-4.1.0/src/gaiageo/gg_kml.c \
	libspatialite-4.1.0/src/gaiageo/gg_lwgeom.c \
	libspatialite-4.1.0/src/gaiageo/gg_relations.c \
	libspatialite-4.1.0/src/gaiageo/gg_shape.c \
	libspatialite-4.1.0/src/gaiageo/gg_transform.c \
	libspatialite-4.1.0/src/gaiageo/gg_vanuatu.c \
	libspatialite-4.1.0/src/gaiageo/gg_voronoj.c \
	libspatialite-4.1.0/src/gaiageo/gg_wkb.c \
	libspatialite-4.1.0/src/gaiageo/gg_wkt.c \
	libspatialite-4.1.0/src/gaiageo/gg_xml.c \
	libspatialite-4.1.0/src/geopackage/gpkgCreateBaseTables.c \
	libspatialite-4.1.0/src/geopackage/gpkgCreateTilesTable.c \
	libspatialite-4.1.0/src/geopackage/gpkgCreateTilesZoomLevel.c \
	libspatialite-4.1.0/src/geopackage/gpkgGetImageType.c \
	libspatialite-4.1.0/src/geopackage/gpkg_add_rt_metadata_triggers.c \
	libspatialite-4.1.0/src/geopackage/gpkg_add_tile_triggers.c \
	libspatialite-4.1.0/src/geopackage/gpkg_get_normal_row.c \
	libspatialite-4.1.0/src/geopackage/gpkg_get_normal_zoom.c \
	libspatialite-4.1.0/src/geopackage/gpkg_point_to_tile.c \
	libspatialite-4.1.0/src/md5/gaia_md5.c \
	libspatialite-4.1.0/src/md5/md5.c \
	libspatialite-4.1.0/src/shapefiles/shapefiles.c \
	libspatialite-4.1.0/src/shapefiles/validator.c \
	libspatialite-4.1.0/src/spatialite/extra_tables.c \
	libspatialite-4.1.0/src/spatialite/mbrcache.c \
	libspatialite-4.1.0/src/spatialite/metatables.c \
	libspatialite-4.1.0/src/spatialite/spatialite.c \
	libspatialite-4.1.0/src/spatialite/spatialite_init.c \
	libspatialite-4.1.0/src/spatialite/statistics.c \
	libspatialite-4.1.0/src/spatialite/virtualXL.c \
	libspatialite-4.1.0/src/spatialite/virtualdbf.c \
	libspatialite-4.1.0/src/spatialite/virtualfdo.c \
	libspatialite-4.1.0/src/spatialite/virtualnetwork.c \
	libspatialite-4.1.0/src/spatialite/virtualshape.c \
	libspatialite-4.1.0/src/spatialite/virtualspatialindex.c \
	libspatialite-4.1.0/src/spatialite/virtualxpath.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_00.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_01.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_02.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_03.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_04.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_05.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_06.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_07.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_08.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_09.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_10.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_11.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_12.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_13.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_14.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_15.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_16.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_17.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_18.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_19.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_20.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_21.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_22.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_23.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_24.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_25.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_26.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_27.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_28.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_29.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_30.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_31.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_32.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_33.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_34.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_35.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_36.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_37.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_38.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_39.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_40.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_extra.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_prussian.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_wgs84_00.c \
	libspatialite-4.1.0/src/srsinit/epsg_inlined_wgs84_01.c \
	libspatialite-4.1.0/src/srsinit/epsg_update/auto_epsg.c \
	libspatialite-4.1.0/src/srsinit/srs_init.c \
	libspatialite-4.1.0/src/versioninfo/version.c \
	libspatialite-4.1.0/src/virtualtext/virtualtext.c \
	libspatialite-4.1.0/src/wfs/wfs_in.c \
    ./javasqlite-20110106/native/empty.cpp 
LOCAL_STATIC_LIBRARIES := iconv proj geos
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := jsqlite
LOCAL_CFLAGS	:= -D__ANDROID__ \
	-DHAVE_SQLITE3=1 \
	-DHAVE_SQLITE3_LOAD_EXTENSION=1 \
	-DSQLITE_ENABLE_RTREE=1 \
	-DCANT_PASS_VALIST_AS_CHARPTR=1 \
	-DHAVE_SQLITE3_INCRBLOBIO=1 \
	-Dfdatasync=fsync
LOCAL_LDLIBS	:= -llog -lz
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/sqlite-amalgamation-3071700\
	$(LOCAL_PATH)/javasqlite-20110106/native/
LOCAL_SRC_FILES := \
	javasqlite-20110106/native/sqlite_jni.c \
	javasqlite-20110106/native/empty.cpp \
	sqlite-amalgamation-3071700/sqlite3.c
LOCAL_STATIC_LIBRARIES := spatialite geos
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi
# find geos-3.3.8/ -name "*.cpp" | grep -Ev "tests|doc" | sort | awk '{ print "\t"$1" \\" }'
LOCAL_MODULE := geos
LOCAL_C_INCLUDES := $(LOCAL_PATH)/geos-3.3.8/include
LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -D__ANDROID__ -DHAVE_LONG_LONG_INT_64
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -ldl -lz
LOCAL_STL                 := gnustl_static
LOCAL_CPPFLAGS            += -fexceptions
LOCAL_CPPFLAGS            += -frtti
LOCAL_CPPFLAGS            += -lsupc++ -lstdc++
LOCAL_SRC_FILES := \
	geos-3.3.8/capi/geos_c.cpp \
	geos-3.3.8/capi/geos_ts_c.cpp \
	geos-3.3.8/src/algorithm/Angle.cpp \
	geos-3.3.8/src/algorithm/BoundaryNodeRule.cpp \
	geos-3.3.8/src/algorithm/CGAlgorithms.cpp \
	geos-3.3.8/src/algorithm/CentroidArea.cpp \
	geos-3.3.8/src/algorithm/CentroidLine.cpp \
	geos-3.3.8/src/algorithm/CentroidPoint.cpp \
	geos-3.3.8/src/algorithm/ConvexHull.cpp \
	geos-3.3.8/src/algorithm/HCoordinate.cpp \
	geos-3.3.8/src/algorithm/InteriorPointArea.cpp \
	geos-3.3.8/src/algorithm/InteriorPointLine.cpp \
	geos-3.3.8/src/algorithm/InteriorPointPoint.cpp \
	geos-3.3.8/src/algorithm/LineIntersector.cpp \
	geos-3.3.8/src/algorithm/MCPointInRing.cpp \
	geos-3.3.8/src/algorithm/MinimumDiameter.cpp \
	geos-3.3.8/src/algorithm/NotRepresentableException.cpp \
	geos-3.3.8/src/algorithm/PointLocator.cpp \
	geos-3.3.8/src/algorithm/RayCrossingCounter.cpp \
	geos-3.3.8/src/algorithm/RobustDeterminant.cpp \
	geos-3.3.8/src/algorithm/SIRtreePointInRing.cpp \
	geos-3.3.8/src/algorithm/SimplePointInRing.cpp \
	geos-3.3.8/src/algorithm/distance/DiscreteHausdorffDistance.cpp \
	geos-3.3.8/src/algorithm/distance/DistanceToPoint.cpp \
	geos-3.3.8/src/algorithm/locate/IndexedPointInAreaLocator.cpp \
	geos-3.3.8/src/algorithm/locate/PointOnGeometryLocator.cpp \
	geos-3.3.8/src/algorithm/locate/SimplePointInAreaLocator.cpp \
	geos-3.3.8/src/geom/Coordinate.cpp \
	geos-3.3.8/src/geom/CoordinateArraySequence.cpp \
	geos-3.3.8/src/geom/CoordinateArraySequenceFactory.cpp \
	geos-3.3.8/src/geom/CoordinateSequence.cpp \
	geos-3.3.8/src/geom/CoordinateSequenceFactory.cpp \
	geos-3.3.8/src/geom/Dimension.cpp \
	geos-3.3.8/src/geom/Envelope.cpp \
	geos-3.3.8/src/geom/Geometry.cpp \
	geos-3.3.8/src/geom/GeometryCollection.cpp \
	geos-3.3.8/src/geom/GeometryComponentFilter.cpp \
	geos-3.3.8/src/geom/GeometryFactory.cpp \
	geos-3.3.8/src/geom/GeometryList.cpp \
	geos-3.3.8/src/geom/IntersectionMatrix.cpp \
	geos-3.3.8/src/geom/LineSegment.cpp \
	geos-3.3.8/src/geom/LineString.cpp \
	geos-3.3.8/src/geom/LinearRing.cpp \
	geos-3.3.8/src/geom/Location.cpp \
	geos-3.3.8/src/geom/MultiLineString.cpp \
	geos-3.3.8/src/geom/MultiPoint.cpp \
	geos-3.3.8/src/geom/MultiPolygon.cpp \
	geos-3.3.8/src/geom/Point.cpp \
	geos-3.3.8/src/geom/Polygon.cpp \
	geos-3.3.8/src/geom/PrecisionModel.cpp \
	geos-3.3.8/src/geom/Triangle.cpp \
	geos-3.3.8/src/geom/prep/AbstractPreparedPolygonContains.cpp \
	geos-3.3.8/src/geom/prep/BasicPreparedGeometry.cpp \
	geos-3.3.8/src/geom/prep/PreparedGeometry.cpp \
	geos-3.3.8/src/geom/prep/PreparedGeometryFactory.cpp \
	geos-3.3.8/src/geom/prep/PreparedLineString.cpp \
	geos-3.3.8/src/geom/prep/PreparedLineStringIntersects.cpp \
	geos-3.3.8/src/geom/prep/PreparedPoint.cpp \
	geos-3.3.8/src/geom/prep/PreparedPolygon.cpp \
	geos-3.3.8/src/geom/prep/PreparedPolygonContains.cpp \
	geos-3.3.8/src/geom/prep/PreparedPolygonContainsProperly.cpp \
	geos-3.3.8/src/geom/prep/PreparedPolygonCovers.cpp \
	geos-3.3.8/src/geom/prep/PreparedPolygonIntersects.cpp \
	geos-3.3.8/src/geom/prep/PreparedPolygonPredicate.cpp \
	geos-3.3.8/src/geom/util/ComponentCoordinateExtracter.cpp \
	geos-3.3.8/src/geom/util/CoordinateOperation.cpp \
	geos-3.3.8/src/geom/util/GeometryCombiner.cpp \
	geos-3.3.8/src/geom/util/GeometryEditor.cpp \
	geos-3.3.8/src/geom/util/GeometryTransformer.cpp \
	geos-3.3.8/src/geom/util/ShortCircuitedGeometryVisitor.cpp \
	geos-3.3.8/src/geom/util/SineStarFactory.cpp \
	geos-3.3.8/src/geomgraph/Depth.cpp \
	geos-3.3.8/src/geomgraph/DirectedEdge.cpp \
	geos-3.3.8/src/geomgraph/DirectedEdgeStar.cpp \
	geos-3.3.8/src/geomgraph/Edge.cpp \
	geos-3.3.8/src/geomgraph/EdgeEnd.cpp \
	geos-3.3.8/src/geomgraph/EdgeEndStar.cpp \
	geos-3.3.8/src/geomgraph/EdgeIntersectionList.cpp \
	geos-3.3.8/src/geomgraph/EdgeList.cpp \
	geos-3.3.8/src/geomgraph/EdgeNodingValidator.cpp \
	geos-3.3.8/src/geomgraph/EdgeRing.cpp \
	geos-3.3.8/src/geomgraph/GeometryGraph.cpp \
	geos-3.3.8/src/geomgraph/GraphComponent.cpp \
	geos-3.3.8/src/geomgraph/Label.cpp \
	geos-3.3.8/src/geomgraph/Node.cpp \
	geos-3.3.8/src/geomgraph/NodeFactory.cpp \
	geos-3.3.8/src/geomgraph/NodeMap.cpp \
	geos-3.3.8/src/geomgraph/PlanarGraph.cpp \
	geos-3.3.8/src/geomgraph/Position.cpp \
	geos-3.3.8/src/geomgraph/Quadrant.cpp \
	geos-3.3.8/src/geomgraph/TopologyLocation.cpp \
	geos-3.3.8/src/geomgraph/index/MonotoneChainEdge.cpp \
	geos-3.3.8/src/geomgraph/index/MonotoneChainIndexer.cpp \
	geos-3.3.8/src/geomgraph/index/SegmentIntersector.cpp \
	geos-3.3.8/src/geomgraph/index/SimpleEdgeSetIntersector.cpp \
	geos-3.3.8/src/geomgraph/index/SimpleMCSweepLineIntersector.cpp \
	geos-3.3.8/src/geomgraph/index/SimpleSweepLineIntersector.cpp \
	geos-3.3.8/src/geomgraph/index/SweepLineEvent.cpp \
	geos-3.3.8/src/geomgraph/index/SweepLineSegment.cpp \
	geos-3.3.8/src/index/bintree/Bintree.cpp \
	geos-3.3.8/src/index/bintree/Interval.cpp \
	geos-3.3.8/src/index/bintree/Key.cpp \
	geos-3.3.8/src/index/bintree/Node.cpp \
	geos-3.3.8/src/index/bintree/NodeBase.cpp \
	geos-3.3.8/src/index/bintree/Root.cpp \
	geos-3.3.8/src/index/chain/MonotoneChain.cpp \
	geos-3.3.8/src/index/chain/MonotoneChainBuilder.cpp \
	geos-3.3.8/src/index/chain/MonotoneChainOverlapAction.cpp \
	geos-3.3.8/src/index/chain/MonotoneChainSelectAction.cpp \
	geos-3.3.8/src/index/intervalrtree/IntervalRTreeBranchNode.cpp \
	geos-3.3.8/src/index/intervalrtree/IntervalRTreeLeafNode.cpp \
	geos-3.3.8/src/index/intervalrtree/IntervalRTreeNode.cpp \
	geos-3.3.8/src/index/intervalrtree/SortedPackedIntervalRTree.cpp \
	geos-3.3.8/src/index/quadtree/DoubleBits.cpp \
	geos-3.3.8/src/index/quadtree/IntervalSize.cpp \
	geos-3.3.8/src/index/quadtree/Key.cpp \
	geos-3.3.8/src/index/quadtree/Node.cpp \
	geos-3.3.8/src/index/quadtree/NodeBase.cpp \
	geos-3.3.8/src/index/quadtree/Quadtree.cpp \
	geos-3.3.8/src/index/quadtree/Root.cpp \
	geos-3.3.8/src/index/strtree/AbstractNode.cpp \
	geos-3.3.8/src/index/strtree/AbstractSTRtree.cpp \
	geos-3.3.8/src/index/strtree/Interval.cpp \
	geos-3.3.8/src/index/strtree/ItemBoundable.cpp \
	geos-3.3.8/src/index/strtree/SIRtree.cpp \
	geos-3.3.8/src/index/strtree/STRtree.cpp \
	geos-3.3.8/src/index/sweepline/SweepLineEvent.cpp \
	geos-3.3.8/src/index/sweepline/SweepLineIndex.cpp \
	geos-3.3.8/src/index/sweepline/SweepLineInterval.cpp \
	geos-3.3.8/src/inlines.cpp \
	geos-3.3.8/src/io/ByteOrderDataInStream.cpp \
	geos-3.3.8/src/io/ByteOrderValues.cpp \
	geos-3.3.8/src/io/CLocalizer.cpp \
	geos-3.3.8/src/io/ParseException.cpp \
	geos-3.3.8/src/io/StringTokenizer.cpp \
	geos-3.3.8/src/io/Unload.cpp \
	geos-3.3.8/src/io/WKBReader.cpp \
	geos-3.3.8/src/io/WKBWriter.cpp \
	geos-3.3.8/src/io/WKTReader.cpp \
	geos-3.3.8/src/io/WKTWriter.cpp \
	geos-3.3.8/src/io/Writer.cpp \
	geos-3.3.8/src/linearref/ExtractLineByLocation.cpp \
	geos-3.3.8/src/linearref/LengthIndexOfPoint.cpp \
	geos-3.3.8/src/linearref/LengthIndexedLine.cpp \
	geos-3.3.8/src/linearref/LengthLocationMap.cpp \
	geos-3.3.8/src/linearref/LinearGeometryBuilder.cpp \
	geos-3.3.8/src/linearref/LinearIterator.cpp \
	geos-3.3.8/src/linearref/LinearLocation.cpp \
	geos-3.3.8/src/linearref/LocationIndexOfLine.cpp \
	geos-3.3.8/src/linearref/LocationIndexOfPoint.cpp \
	geos-3.3.8/src/noding/BasicSegmentString.cpp \
	geos-3.3.8/src/noding/FastNodingValidator.cpp \
	geos-3.3.8/src/noding/FastSegmentSetIntersectionFinder.cpp \
	geos-3.3.8/src/noding/IntersectionAdder.cpp \
	geos-3.3.8/src/noding/IntersectionFinderAdder.cpp \
	geos-3.3.8/src/noding/IteratedNoder.cpp \
	geos-3.3.8/src/noding/MCIndexNoder.cpp \
	geos-3.3.8/src/noding/MCIndexSegmentSetMutualIntersector.cpp \
	geos-3.3.8/src/noding/NodedSegmentString.cpp \
	geos-3.3.8/src/noding/NodingValidator.cpp \
	geos-3.3.8/src/noding/Octant.cpp \
	geos-3.3.8/src/noding/OrientedCoordinateArray.cpp \
	geos-3.3.8/src/noding/ScaledNoder.cpp \
	geos-3.3.8/src/noding/SegmentIntersectionDetector.cpp \
	geos-3.3.8/src/noding/SegmentNode.cpp \
	geos-3.3.8/src/noding/SegmentNodeList.cpp \
	geos-3.3.8/src/noding/SegmentString.cpp \
	geos-3.3.8/src/noding/SegmentStringUtil.cpp \
	geos-3.3.8/src/noding/SimpleNoder.cpp \
	geos-3.3.8/src/noding/SingleInteriorIntersectionFinder.cpp \
	geos-3.3.8/src/noding/snapround/HotPixel.cpp \
	geos-3.3.8/src/noding/snapround/MCIndexPointSnapper.cpp \
	geos-3.3.8/src/noding/snapround/MCIndexSnapRounder.cpp \
	geos-3.3.8/src/noding/snapround/SimpleSnapRounder.cpp \
	geos-3.3.8/src/operation/GeometryGraphOperation.cpp \
	geos-3.3.8/src/operation/IsSimpleOp.cpp \
	geos-3.3.8/src/operation/buffer/BufferBuilder.cpp \
	geos-3.3.8/src/operation/buffer/BufferInputLineSimplifier.cpp \
	geos-3.3.8/src/operation/buffer/BufferOp.cpp \
	geos-3.3.8/src/operation/buffer/BufferParameters.cpp \
	geos-3.3.8/src/operation/buffer/BufferSubgraph.cpp \
	geos-3.3.8/src/operation/buffer/OffsetCurveBuilder.cpp \
	geos-3.3.8/src/operation/buffer/OffsetCurveSetBuilder.cpp \
	geos-3.3.8/src/operation/buffer/OffsetSegmentGenerator.cpp \
	geos-3.3.8/src/operation/buffer/RightmostEdgeFinder.cpp \
	geos-3.3.8/src/operation/buffer/SubgraphDepthLocater.cpp \
	geos-3.3.8/src/operation/distance/ConnectedElementLocationFilter.cpp \
	geos-3.3.8/src/operation/distance/ConnectedElementPointFilter.cpp \
	geos-3.3.8/src/operation/distance/DistanceOp.cpp \
	geos-3.3.8/src/operation/distance/GeometryLocation.cpp \
	geos-3.3.8/src/operation/linemerge/EdgeString.cpp \
	geos-3.3.8/src/operation/linemerge/LineMergeDirectedEdge.cpp \
	geos-3.3.8/src/operation/linemerge/LineMergeEdge.cpp \
	geos-3.3.8/src/operation/linemerge/LineMergeGraph.cpp \
	geos-3.3.8/src/operation/linemerge/LineMerger.cpp \
	geos-3.3.8/src/operation/linemerge/LineSequencer.cpp \
	geos-3.3.8/src/operation/overlay/EdgeSetNoder.cpp \
	geos-3.3.8/src/operation/overlay/ElevationMatrix.cpp \
	geos-3.3.8/src/operation/overlay/ElevationMatrixCell.cpp \
	geos-3.3.8/src/operation/overlay/LineBuilder.cpp \
	geos-3.3.8/src/operation/overlay/MaximalEdgeRing.cpp \
	geos-3.3.8/src/operation/overlay/MinimalEdgeRing.cpp \
	geos-3.3.8/src/operation/overlay/OverlayNodeFactory.cpp \
	geos-3.3.8/src/operation/overlay/OverlayOp.cpp \
	geos-3.3.8/src/operation/overlay/PointBuilder.cpp \
	geos-3.3.8/src/operation/overlay/PolygonBuilder.cpp \
	geos-3.3.8/src/operation/overlay/snap/GeometrySnapper.cpp \
	geos-3.3.8/src/operation/overlay/snap/LineStringSnapper.cpp \
	geos-3.3.8/src/operation/overlay/snap/SnapIfNeededOverlayOp.cpp \
	geos-3.3.8/src/operation/overlay/snap/SnapOverlayOp.cpp \
	geos-3.3.8/src/operation/overlay/validate/FuzzyPointLocator.cpp \
	geos-3.3.8/src/operation/overlay/validate/OffsetPointGenerator.cpp \
	geos-3.3.8/src/operation/overlay/validate/OverlayResultValidator.cpp \
	geos-3.3.8/src/operation/polygonize/EdgeRing.cpp \
	geos-3.3.8/src/operation/polygonize/PolygonizeDirectedEdge.cpp \
	geos-3.3.8/src/operation/polygonize/PolygonizeEdge.cpp \
	geos-3.3.8/src/operation/polygonize/PolygonizeGraph.cpp \
	geos-3.3.8/src/operation/polygonize/Polygonizer.cpp \
	geos-3.3.8/src/operation/predicate/RectangleContains.cpp \
	geos-3.3.8/src/operation/predicate/RectangleIntersects.cpp \
	geos-3.3.8/src/operation/predicate/SegmentIntersectionTester.cpp \
	geos-3.3.8/src/operation/relate/EdgeEndBuilder.cpp \
	geos-3.3.8/src/operation/relate/EdgeEndBundle.cpp \
	geos-3.3.8/src/operation/relate/EdgeEndBundleStar.cpp \
	geos-3.3.8/src/operation/relate/RelateComputer.cpp \
	geos-3.3.8/src/operation/relate/RelateNode.cpp \
	geos-3.3.8/src/operation/relate/RelateNodeFactory.cpp \
	geos-3.3.8/src/operation/relate/RelateNodeGraph.cpp \
	geos-3.3.8/src/operation/relate/RelateOp.cpp \
	geos-3.3.8/src/operation/sharedpaths/SharedPathsOp.cpp \
	geos-3.3.8/src/operation/union/CascadedPolygonUnion.cpp \
	geos-3.3.8/src/operation/union/CascadedUnion.cpp \
	geos-3.3.8/src/operation/union/PointGeometryUnion.cpp \
	geos-3.3.8/src/operation/union/UnaryUnionOp.cpp \
	geos-3.3.8/src/operation/valid/ConnectedInteriorTester.cpp \
	geos-3.3.8/src/operation/valid/ConsistentAreaTester.cpp \
	geos-3.3.8/src/operation/valid/IndexedNestedRingTester.cpp \
	geos-3.3.8/src/operation/valid/IsValidOp.cpp \
	geos-3.3.8/src/operation/valid/QuadtreeNestedRingTester.cpp \
	geos-3.3.8/src/operation/valid/RepeatedPointTester.cpp \
	geos-3.3.8/src/operation/valid/SimpleNestedRingTester.cpp \
	geos-3.3.8/src/operation/valid/SweeplineNestedRingTester.cpp \
	geos-3.3.8/src/operation/valid/TopologyValidationError.cpp \
	geos-3.3.8/src/planargraph/DirectedEdge.cpp \
	geos-3.3.8/src/planargraph/DirectedEdgeStar.cpp \
	geos-3.3.8/src/planargraph/Edge.cpp \
	geos-3.3.8/src/planargraph/Node.cpp \
	geos-3.3.8/src/planargraph/NodeMap.cpp \
	geos-3.3.8/src/planargraph/PlanarGraph.cpp \
	geos-3.3.8/src/planargraph/Subgraph.cpp \
	geos-3.3.8/src/planargraph/algorithm/ConnectedSubgraphFinder.cpp \
	geos-3.3.8/src/precision/CommonBits.cpp \
	geos-3.3.8/src/precision/CommonBitsOp.cpp \
	geos-3.3.8/src/precision/CommonBitsRemover.cpp \
	geos-3.3.8/src/precision/EnhancedPrecisionOp.cpp \
	geos-3.3.8/src/precision/SimpleGeometryPrecisionReducer.cpp \
	geos-3.3.8/src/simplify/DouglasPeuckerLineSimplifier.cpp \
	geos-3.3.8/src/simplify/DouglasPeuckerSimplifier.cpp \
	geos-3.3.8/src/simplify/LineSegmentIndex.cpp \
	geos-3.3.8/src/simplify/TaggedLineSegment.cpp \
	geos-3.3.8/src/simplify/TaggedLineString.cpp \
	geos-3.3.8/src/simplify/TaggedLineStringSimplifier.cpp \
	geos-3.3.8/src/simplify/TaggedLinesSimplifier.cpp \
	geos-3.3.8/src/simplify/TopologyPreservingSimplifier.cpp \
	geos-3.3.8/src/util/Assert.cpp \
	geos-3.3.8/src/util/GeometricShapeFactory.cpp \
	geos-3.3.8/src/util/Profiler.cpp \
	geos-3.3.8/src/util/math.cpp 
include $(BUILD_STATIC_LIBRARY)
