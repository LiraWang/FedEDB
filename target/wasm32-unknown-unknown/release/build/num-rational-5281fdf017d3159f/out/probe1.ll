; ModuleID = 'probe1.c4c19086-cgu.0'
source_filename = "probe1.c4c19086-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

%"core::panic::location::Location" = type { { [0 x i8]*, i32 }, i32, i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i32* }
%"core::fmt::Formatter" = type { i32, i32, { i32, i32 }, { i32, i32 }, { {}*, [3 x i32]* }, i8, [3 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i32 }]*, i32 }, { i32*, i32 }, { [0 x { i8*, i32* }]*, i32 } }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i32 }, i32 }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i32] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i32] }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i32], i32 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i32, i32 } } }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }

@alloc3 = private unnamed_addr constant <{}> zeroinitializer, align 4
@alloc9 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [4 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [4 x i8] c"\0C\00\00\00" }>, align 4
@alloc50 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/5750a6aa2777382bf421b726f234da23f990a953/library/core/src/fmt/mod.rs" }>, align 1
@alloc51 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc50, i32 0, i32 0, i32 0), [12 x i8] c"K\00\00\00\86\01\00\00\0D\00\00\00" }>, align 4
@alloc52 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/5750a6aa2777382bf421b726f234da23f990a953/library/core/src/alloc/layout.rs" }>, align 1
@alloc53 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc52, i32 0, i32 0, i32 0), [12 x i8] c"P\00\00\00\97\01\00\00\1A\00\00\00" }>, align 4
@alloc54 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/5750a6aa2777382bf421b726f234da23f990a953/library/alloc/src/alloc.rs" }>, align 1
@alloc55 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc54, i32 0, i32 0, i32 0), [12 x i8] c"J\00\00\00\AC\00\00\00\1B\00\00\00" }>, align 4
@alloc56 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/5750a6aa2777382bf421b726f234da23f990a953/library/alloc/src/raw_vec.rs" }>, align 1
@alloc57 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc56, i32 0, i32 0, i32 0), [12 x i8] c"L\00\00\00\F7\00\00\00;\00\00\00" }>, align 4
@alloc4 = private unnamed_addr constant <{ i8*, [4 x i8] }> <{ i8* bitcast (<{}>* @alloc3 to i8*), [4 x i8] zeroinitializer }>, align 4
@alloc6 = private unnamed_addr constant <{ [4 x i8] }> zeroinitializer, align 4

; <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h5e67f7d854551983E"(i8* %unique) unnamed_addr #0 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h6fb70879996e4224E"(i8* %unique) #10
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habfca77c7f4a15d1E"(i8* %_2) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; <core::ptr::unique::Unique<T> as core::convert::From<core::ptr::non_null::NonNull<T>>>::from
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hb77fba3561386994E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
  store i8* %pointer, i8** %0, align 4
  %1 = load i8*, i8** %0, align 4, !nonnull !0, !noundef !0
  ret i8* %1
}

; <alloc::collections::TryReserveError as core::convert::From<alloc::collections::TryReserveErrorKind>>::from
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17he25536b7f4d5f615E"(i32 %kind.0, i32 %kind.1) unnamed_addr #0 {
start:
  %0 = alloca { i32, i32 }, align 4
  %1 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  store i32 %kind.0, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %kind.1, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !range !1, !noundef !0
  %7 = insertvalue { i32, i32 } undef, i32 %4, 0
  %8 = insertvalue { i32, i32 } %7, i32 %6, 1
  ret { i32, i32 } %8
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nounwind
define hidden { i8*, i32 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h513ba295a8a71605E"(%"core::panic::location::Location"* align 4 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i32 }, align 4
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha7fcf6adf45932f4E"() #10
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i8*, i32 }* %1 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"*
  %3 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"* %2 to %"core::alloc::AllocError"*
  %4 = bitcast { i8*, i32 }* %1 to {}**
  store {}* null, {}** %4, align 4
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  %6 = load i8*, i8** %5, align 4
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  ret { i8*, i32 } %10
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcc10bda5fe52fa76E"(%"core::panic::location::Location"* align 4 %0) unnamed_addr #0 {
start:
  %1 = alloca { i32, i32 }, align 4
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h1bd2d124a29e4524E"() #10
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i32, i32 }* %1 to %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"*
  %3 = bitcast %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"* %2 to %"core::alloc::layout::LayoutError"*
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  %8 = load i32, i32* %7, align 4, !range !1, !noundef !0
  %9 = insertvalue { i32, i32 } undef, i32 %6, 0
  %10 = insertvalue { i32, i32 } %9, i32 %8, 1
  ret { i32, i32 } %10
}

; core::intrinsics::copy_nonoverlapping
; Function Attrs: inlinehint nounwind
define hidden void @_ZN4core10intrinsics19copy_nonoverlapping17h0997abe310536b3dE(i8* %src, i8* %dst, i32 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 4
  %0 = mul i32 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %dst, i8* align 1 %src, i32 %0, i1 false)
  ret void
}

; core::fmt::ArgumentV1::new_lower_exp
; Function Attrs: inlinehint nounwind
define hidden { i8*, i32* } @_ZN4core3fmt10ArgumentV113new_lower_exp17hd3be4ae734ed4bbbE(i32* align 4 %x) unnamed_addr #0 {
start:
; call core::fmt::ArgumentV1::new
  %0 = call { i8*, i32* } @_ZN4core3fmt10ArgumentV13new17h3c81eeac429cee66E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h3d6296a9d66c57abE") #10
  %1 = extractvalue { i8*, i32* } %0, 0
  %2 = extractvalue { i8*, i32* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i32* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i32* } %3, i32* %2, 1
  ret { i8*, i32* } %4
}

; core::fmt::ArgumentV1::new
; Function Attrs: inlinehint nounwind
define hidden { i8*, i32* } @_ZN4core3fmt10ArgumentV13new17h3c81eeac429cee66E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 4
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 4
  %2 = alloca { i8*, i32* }, align 4
  %3 = bitcast i1 (i32*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 4
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 4, !nonnull !0, !noundef !0
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i32* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 4
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 4, !nonnull !0, !align !2, !noundef !0
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i32* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 4
  %6 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %2, i32 0, i32 1
  %7 = bitcast i32** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 4
  %8 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 4, !nonnull !0, !align !2, !noundef !0
  %10 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %2, i32 0, i32 1
  %11 = load i32*, i32** %10, align 4, !nonnull !0, !noundef !0
  %12 = insertvalue { i8*, i32* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32* } %12, i32* %11, 1
  ret { i8*, i32* } %13
}

; core::fmt::Arguments::as_str
; Function Attrs: inlinehint nounwind
define internal { i8*, i32 } @_ZN4core3fmt9Arguments6as_str17h9a83f2f2f39f16d7E(%"core::fmt::Arguments"* align 4 %self) unnamed_addr #0 {
start:
  %_2 = alloca { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }, align 4
  %0 = alloca { i8*, i32 }, align 4
  %1 = bitcast %"core::fmt::Arguments"* %self to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %2 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %1, i32 0, i32 0
  %_3.0 = load [0 x { [0 x i8]*, i32 }]*, [0 x { [0 x i8]*, i32 }]** %2, align 4, !nonnull !0, !align !3, !noundef !0
  %3 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %1, i32 0, i32 1
  %_3.1 = load i32, i32* %3, align 4
  %4 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %self, i32 0, i32 2
  %5 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %4, i32 0, i32 0
  %_4.0 = load [0 x { i8*, i32* }]*, [0 x { i8*, i32* }]** %5, align 4, !nonnull !0, !align !3, !noundef !0
  %6 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %4, i32 0, i32 1
  %_4.1 = load i32, i32* %6, align 4
  %7 = bitcast { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %8 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %7, i32 0, i32 0
  store [0 x { [0 x i8]*, i32 }]* %_3.0, [0 x { [0 x i8]*, i32 }]** %8, align 4
  %9 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %7, i32 0, i32 1
  store i32 %_3.1, i32* %9, align 4
  %10 = getelementptr inbounds { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }, { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2, i32 0, i32 1
  %11 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %10, i32 0, i32 0
  store [0 x { i8*, i32* }]* %_4.0, [0 x { i8*, i32* }]** %11, align 4
  %12 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %10, i32 0, i32 1
  store i32 %_4.1, i32* %12, align 4
  %13 = bitcast { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %14 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %13, i32 0, i32 0
  %_21.0 = load [0 x { [0 x i8]*, i32 }]*, [0 x { [0 x i8]*, i32 }]** %14, align 4, !nonnull !0, !align !3, !noundef !0
  %15 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %13, i32 0, i32 1
  %_21.1 = load i32, i32* %15, align 4
  %_16 = icmp eq i32 %_21.1, 0
  br i1 %_16, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %16 = bitcast { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %17 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %16, i32 0, i32 0
  %_23.0 = load [0 x { [0 x i8]*, i32 }]*, [0 x { [0 x i8]*, i32 }]** %17, align 4, !nonnull !0, !align !3, !noundef !0
  %18 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %16, i32 0, i32 1
  %_23.1 = load i32, i32* %18, align 4
  %_13 = icmp eq i32 %_23.1, 1
  br i1 %_13, label %bb4, label %bb2

bb1:                                              ; preds = %start
  %19 = getelementptr inbounds { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }, { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2, i32 0, i32 1
  %20 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %19, i32 0, i32 0
  %_22.0 = load [0 x { i8*, i32* }]*, [0 x { i8*, i32* }]** %20, align 4, !nonnull !0, !align !3, !noundef !0
  %21 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %19, i32 0, i32 1
  %_22.1 = load i32, i32* %21, align 4
  %_7 = icmp eq i32 %_22.1, 0
  br i1 %_7, label %bb5, label %bb2

bb2:                                              ; preds = %bb4, %bb3, %bb1
  %22 = bitcast { i8*, i32 }* %0 to {}**
  store {}* null, {}** %22, align 4
  br label %bb7

bb5:                                              ; preds = %bb1
  %23 = bitcast { i8*, i32 }* %0 to { [0 x i8]*, i32 }*
  %24 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %23, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc3 to [0 x i8]*), [0 x i8]** %24, align 4
  %25 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %23, i32 0, i32 1
  store i32 0, i32* %25, align 4
  br label %bb7

bb7:                                              ; preds = %bb2, %bb6, %bb5
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  %27 = load i8*, i8** %26, align 4, !align !2
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  ret { i8*, i32 } %31

bb4:                                              ; preds = %bb3
  %32 = getelementptr inbounds { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }, { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2, i32 0, i32 1
  %33 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %32, i32 0, i32 0
  %_24.0 = load [0 x { i8*, i32* }]*, [0 x { i8*, i32* }]** %33, align 4, !nonnull !0, !align !3, !noundef !0
  %34 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %32, i32 0, i32 1
  %_24.1 = load i32, i32* %34, align 4
  %_10 = icmp eq i32 %_24.1, 0
  br i1 %_10, label %bb6, label %bb2

bb6:                                              ; preds = %bb4
  %35 = bitcast { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %36 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %35, i32 0, i32 0
  %_25.0 = load [0 x { [0 x i8]*, i32 }]*, [0 x { [0 x i8]*, i32 }]** %36, align 4, !nonnull !0, !align !3, !noundef !0
  %37 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %35, i32 0, i32 1
  %_25.1 = load i32, i32* %37, align 4
  %s = getelementptr inbounds [0 x { [0 x i8]*, i32 }], [0 x { [0 x i8]*, i32 }]* %_25.0, i32 0, i32 0
  %38 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %s, i32 0, i32 0
  %_26.0 = load [0 x i8]*, [0 x i8]** %38, align 4, !nonnull !0, !align !2, !noundef !0
  %39 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %s, i32 0, i32 1
  %_26.1 = load i32, i32* %39, align 4
  %40 = bitcast { i8*, i32 }* %0 to { [0 x i8]*, i32 }*
  %41 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %40, i32 0, i32 0
  store [0 x i8]* %_26.0, [0 x i8]** %41, align 4
  %42 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %40, i32 0, i32 1
  store i32 %_26.1, i32* %42, align 4
  br label %bb7
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core3fmt9Arguments6new_v117hf736dc51eb49b2a7E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i32 }]* align 4 %pieces.0, i32 %pieces.1, [0 x { i8*, i32* }]* align 4 %args.0, i32 %args.1) unnamed_addr #0 {
start:
  %_24 = alloca { i32*, i32 }, align 4
  %_16 = alloca %"core::fmt::Arguments", align 4
  %_3 = alloca i8, align 1
  %_4 = icmp ult i32 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i32 %args.1, 1
  %_9 = icmp ugt i32 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, i8* %_3, align 1, !range !4, !noundef !0
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %4 = bitcast { i32*, i32 }* %_24 to {}**
  store {}* null, {}** %4, align 4
  %5 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %5, i32 0, i32 0
  store [0 x { [0 x i8]*, i32 }]* %pieces.0, [0 x { [0 x i8]*, i32 }]** %6, align 4
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %5, i32 0, i32 1
  store i32 %pieces.1, i32* %7, align 4
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %9 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_24, i32 0, i32 0
  %10 = load i32*, i32** %9, align 4, !align !3
  %11 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_24, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %8, i32 0, i32 0
  store i32* %10, i32** %13, align 4
  %14 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %8, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %16 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %15, i32 0, i32 0
  store [0 x { i8*, i32* }]* %args.0, [0 x { i8*, i32* }]** %16, align 4
  %17 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %15, i32 0, i32 1
  store i32 %args.1, i32* %17, align 4
  ret void

bb4:                                              ; preds = %bb3
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hf736dc51eb49b2a7E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i32 }]* align 4 bitcast (<{ i8*, [4 x i8] }>* @alloc10 to [0 x { [0 x i8]*, i32 }]*), i32 1, [0 x { i8*, i32* }]* align 4 bitcast (<{}>* @alloc3 to [0 x { i8*, i32* }]*), i32 0) #10
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h68154f52debc3fafE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 4 bitcast (<{ i8*, [12 x i8] }>* @alloc51 to %"core::panic::location::Location"*)) #11
  unreachable
}

; core::mem::valid_align::ValidAlign::as_nonzero
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h67b26a2dbaceebf2E(i32 %self) unnamed_addr #0 {
start:
  %0 = icmp uge i32 %self, 1
  call void @llvm.assume(i1 %0)
  %1 = icmp ule i32 %self, -2147483648
  call void @llvm.assume(i1 %1)
; call core::num::nonzero::NonZeroUsize::new_unchecked
  %2 = call i32 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17habccbf1df565921dE(i32 %self) #10, !range !5
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; core::mem::valid_align::ValidAlign::new_unchecked
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hf2d64ffcef7a2988E(i32 %align) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 %align, i32* %0, align 4
  %1 = load i32, i32* %0, align 4, !range !6, !noundef !0
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; core::num::<impl usize>::checked_mul
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h4abcc7b37561c0a0E"(i32 %self, i32 %rhs) unnamed_addr #0 {
start:
  %0 = alloca { i32, i8 }, align 4
  %1 = alloca { i32, i8 }, align 4
  %2 = alloca i8, align 1
  %3 = alloca { i32, i32 }, align 4
  %4 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %self, i32 %rhs) #10
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i32, i8 }* %0 to i32*
  store i32 %5, i32* %8, align 4
  %9 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 4
  %10 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i32, i32* %10, align 4
  %11 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 4, !range !4, !noundef !0
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i32, i8 }* %1 to i32*
  store i32 %_5.0.i, i32* %13, align 4
  %14 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 4
  %16 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 4, !range !4, !noundef !0
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i32, i8 } undef, i32 %17, 0
  %23 = insertvalue { i32, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i32, i8 } %23, 0
  %24 = extractvalue { i32, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !4, !noundef !0
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1
  store i32 %_5.0, i32* %28, align 4
  %29 = bitcast { i32, i32 }* %3 to i32*
  store i32 1, i32* %29, align 4
  br label %bb5

bb3:                                              ; preds = %bb2
  %30 = bitcast { i32, i32 }* %3 to i32*
  store i32 0, i32* %30, align 4
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %31 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4, !range !7, !noundef !0
  %33 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = insertvalue { i32, i32 } undef, i32 %32, 0
  %36 = insertvalue { i32, i32 } %35, i32 %34, 1
  ret { i32, i32 } %36
}

; core::num::nonzero::NonZeroUsize::new_unchecked
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17habccbf1df565921dE(i32 %n) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 %n, i32* %0, align 4
  %1 = load i32, i32* %0, align 4, !range !5, !noundef !0
  ret i32 %1
}

; core::num::nonzero::NonZeroUsize::get
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core3num7nonzero12NonZeroUsize3get17h573eb6b6a447f267E(i32 %self) unnamed_addr #0 {
start:
  ret i32 %self
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core3ops8function6FnOnce9call_once17he1b42da9503ba357E(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %1, i32 %2) unnamed_addr #0 {
start:
  %_2 = alloca { i8*, i32 }, align 4
  %3 = bitcast { i8*, i32 }* %_2 to { [0 x i8]*, i32 }*
  %4 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %3, i32 0, i32 0
  store [0 x i8]* %1, [0 x i8]** %4, align 4
  %5 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %3, i32 0, i32 1
  store i32 %2, i32* %5, align 4
  %6 = bitcast { i8*, i32 }* %_2 to { [0 x i8]*, i32 }*
  %7 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %6, i32 0, i32 0
  %8 = load [0 x i8]*, [0 x i8]** %7, align 4, !nonnull !0, !align !2, !noundef !0
  %9 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8a7af1c0b32f05a5E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %8, i32 %10) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::slice_from_raw_parts_mut
; Function Attrs: inlinehint nounwind
define hidden { [0 x i8]*, i32 } @_ZN4core3ptr24slice_from_raw_parts_mut17h028cac9382b13c01E(i8* %data, i32 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::from_raw_parts_mut
  %1 = call { [0 x i8]*, i32 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hae73295bc7f185a2E({}* %0, i32 %len) #10
  %2 = extractvalue { [0 x i8]*, i32 } %1, 0
  %3 = extractvalue { [0 x i8]*, i32 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i32 } %4, i32 %3, 1
  ret { [0 x i8]*, i32 } %5
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h49585814b31d5b1fE"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf6c6d9d3ab712276E"(%"alloc::vec::Vec<u8>"* %0) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf6c6d9d3ab712276E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 {
start:
; call <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h59e3f291ded76814E"(%"alloc::vec::Vec<u8>"* align 4 %_1) #10
  br label %bb2

bb2:                                              ; preds = %start
  %0 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i32 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h101e8212ceaf3846E"({ i8*, i32 }* %0) #10
  br label %bb1

bb1:                                              ; preds = %bb2
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h101e8212ceaf3846E"({ i8*, i32 }* %_1) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h89f1f201c116fad8E"({ i8*, i32 }* align 4 %_1) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::unique::Unique<T>::new_unchecked
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h0f06ff19e8867dd4E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habfca77c7f4a15d1E"(i8* %ptr) #10
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 4
  %1 = load i8*, i8** %0, align 4, !nonnull !0, !noundef !0
  ret i8* %1
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hc0dab8005e27779dE"(i8* %self) unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::cast
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h884592a7e561869eE"(i8* %self) #10
  br label %bb1

bb1:                                              ; preds = %start
; call <core::ptr::unique::Unique<T> as core::convert::From<core::ptr::non_null::NonNull<T>>>::from
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hb77fba3561386994E"(i8* %_2) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h6fb70879996e4224E"(i8* %self) unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf51d9b3652c71e1dE"(i8* %self) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; core::ptr::unique::Unique<T>::dangling
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h4806824132fcbd0fE"() unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::dangling
  %_1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17ha2f65f7c8454df86E"() #10
  br label %bb1

bb1:                                              ; preds = %start
; call <core::ptr::unique::Unique<T> as core::convert::From<core::ptr::non_null::NonNull<T>>>::from
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hb77fba3561386994E"(i8* %_1) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
; Function Attrs: inlinehint nounwind
define hidden zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h438a3f6682e24d6dE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !0
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nounwind
define hidden zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4c5d534780f3b3c1E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 4
  %1 = bitcast {}** %0 to i32*
  store i32 0, i32* %1, align 4
  %2 = load {}*, {}** %0, align 4
; call core::ptr::metadata::from_raw_parts_mut
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2a9c380d27d2c246E({}* %2) #10
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h438a3f6682e24d6dE"(i8* %self, i8* %3) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; core::ptr::metadata::from_raw_parts_mut
; Function Attrs: inlinehint nounwind
define hidden i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h2a9c380d27d2c246E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 4
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 4
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 4
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %3, i8* align 4 %4, i32 4, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 4
  ret i8* %6
}

; core::ptr::metadata::from_raw_parts_mut
; Function Attrs: inlinehint nounwind
define hidden { [0 x i8]*, i32 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hae73295bc7f185a2E({}* %data_address, i32 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i32 }, align 4
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 4
  %0 = bitcast { i8*, i32 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 4
  %1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_4, i32 0, i32 1
  store i32 %metadata, i32* %1, align 4
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i32 }*
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 4
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 4
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i32 }*
  %10 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 4
  %12 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %9, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i32 } %14, i32 %13, 1
  ret { [0 x i8]*, i32 } %15
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nounwind
define hidden { i8*, i32 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9ce7cd0ad954af1aE"([0 x i8]* %ptr.0, i32 %ptr.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i32 }, align 4
  %1 = bitcast { i8*, i32 }* %0 to { [0 x i8]*, i32 }*
  %2 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %1, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %2, align 4
  %3 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %1, i32 0, i32 1
  store i32 %ptr.1, i32* %3, align 4
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 4, !nonnull !0, !noundef !0
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  ret { i8*, i32 } %9
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habfca77c7f4a15d1E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
  store i8* %ptr, i8** %0, align 4
  %1 = load i8*, i8** %0, align 4, !nonnull !0, !noundef !0
  ret i8* %1
}

; core::ptr::non_null::NonNull<T>::new
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h9e7d6704f5802c65E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4c5d534780f3b3c1E"(i8* %ptr) #10
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %1 = bitcast i8** %0 to {}**
  store {}* null, {}** %1, align 4
  br label %bb5

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habfca77c7f4a15d1E"(i8* %ptr) #10
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 4
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %2 = load i8*, i8** %0, align 4
  ret i8* %2
}

; core::ptr::non_null::NonNull<T>::cast
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5d96fb3c3608dd45E"(i8* %self.0, i32 %self.1) unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %0 = call { [0 x i8]*, i32 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6cff99c630b95b7cE"(i8* %self.0, i32 %self.1) #10
  %_3.0 = extractvalue { [0 x i8]*, i32 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i8*
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habfca77c7f4a15d1E"(i8* %_2) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; core::ptr::non_null::NonNull<T>::cast
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h884592a7e561869eE"(i8* %self) unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf51d9b3652c71e1dE"(i8* %self) #10
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habfca77c7f4a15d1E"(i8* %_3) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nounwind
define hidden { [0 x i8]*, i32 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6cff99c630b95b7cE"(i8* %self.0, i32 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i32 } %0, i32 %self.1, 1
  ret { [0 x i8]*, i32 } %1
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf51d9b3652c71e1dE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; core::ptr::non_null::NonNull<T>::dangling
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$8dangling17ha2f65f7c8454df86E"() unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i32*
  store i32 1, i32* %1, align 4
  %2 = load i8*, i8** %0, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habfca77c7f4a15d1E"(i8* %2) #10
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; core::ptr::non_null::NonNull<[T]>::slice_from_raw_parts
; Function Attrs: inlinehint nounwind
define hidden { i8*, i32 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h63f36f1eb446d14dE"(i8* %data, i32 %len) unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf51d9b3652c71e1dE"(i8* %data) #10
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::slice_from_raw_parts_mut
  %0 = call { [0 x i8]*, i32 } @_ZN4core3ptr24slice_from_raw_parts_mut17h028cac9382b13c01E(i8* %_4, i32 %len) #10
  %_3.0 = extractvalue { [0 x i8]*, i32 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i32 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %1 = call { i8*, i32 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9ce7cd0ad954af1aE"([0 x i8]* %_3.0, i32 %_3.1) #10
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i32 } %4, i32 %3, 1
  ret { i8*, i32 } %5
}

; core::ptr::const_ptr::<impl *const T>::copy_to_nonoverlapping
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17h2c0f34c3f0c4adb5E"(i8* %self, i8* %dest, i32 %count) unnamed_addr #0 {
start:
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h0997abe310536b3dE(i8* %self, i8* %dest, i32 %count) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::hint::unreachable_unchecked
; Function Attrs: inlinehint noreturn nounwind
define internal void @_ZN4core4hint21unreachable_unchecked17hfd4825ba7ebcc02cE() unnamed_addr #2 {
start:
  unreachable
}

; core::alloc::layout::Layout::from_size_align_unchecked
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h4cb4590608b1dce1E(i32 %size, i32 %align) unnamed_addr #0 {
start:
  %0 = alloca { i32, i32 }, align 4
; call core::mem::valid_align::ValidAlign::new_unchecked
  %_4 = call i32 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hf2d64ffcef7a2988E(i32 %align) #10, !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i32, i32 }* %0 to i32*
  store i32 %size, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_4, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !range !6, !noundef !0
  %7 = insertvalue { i32, i32 } undef, i32 %4, 0
  %8 = insertvalue { i32, i32 } %7, i32 %6, 1
  ret { i32, i32 } %8
}

; core::alloc::layout::Layout::size
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core5alloc6layout6Layout4size17h81b94236ffbf1a29E({ i32, i32 }* align 4 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i32, i32 }* %self to i32*
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

; core::alloc::layout::Layout::align
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core5alloc6layout6Layout5align17h527130c563a4093bE({ i32, i32 }* align 4 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %_3 = load i32, i32* %0, align 4, !range !6, !noundef !0
; call core::mem::valid_align::ValidAlign::as_nonzero
  %_2 = call i32 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h67b26a2dbaceebf2E(i32 %_3) #10, !range !5
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::nonzero::NonZeroUsize::get
  %1 = call i32 @_ZN4core3num7nonzero12NonZeroUsize3get17h573eb6b6a447f267E(i32 %_2) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; core::alloc::layout::Layout::array
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @_ZN4core5alloc6layout6Layout5array17hf62d9b7516c6baeeE(i32 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i32, i32 }, align 4
  %0 = alloca { i32, i32 }, align 4
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl usize>::checked_mul
  %1 = call { i32, i32 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h4abcc7b37561c0a0E"(i32 1, i32 %n) #10
  %_5.0 = extractvalue { i32, i32 } %1, 0
  %_5.1 = extractvalue { i32, i32 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::option::Option<T>::ok_or
  %2 = call { i32, i32 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h8dcfd45ec2c3cb86E"(i32 %_5.0, i32 %_5.1) #10
  %_4.0 = extractvalue { i32, i32 } %2, 0
  %_4.1 = extractvalue { i32, i32 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  %3 = call { i32, i32 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h73f5a90a3d690d94E"(i32 %_4.0, i32 %_4.1) #10
  store { i32, i32 } %3, { i32, i32 }* %_3, align 4
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i32, i32 }* %_3 to i32*
  %_9 = load i32, i32* %4, align 4, !range !7, !noundef !0
  switch i32 %_9, label %bb6 [
    i32 0, label %bb5
    i32 1, label %bb7
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_3, i32 0, i32 1
  %val = load i32, i32* %5, align 4
  br label %bb9

bb7:                                              ; preds = %bb4
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  %6 = call { i32, i32 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcc10bda5fe52fa76E"(%"core::panic::location::Location"* align 4 bitcast (<{ i8*, [12 x i8] }>* @alloc53 to %"core::panic::location::Location"*)) #10
  store { i32, i32 } %6, { i32, i32 }* %0, align 4
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !range !1, !noundef !0
  %11 = insertvalue { i32, i32 } undef, i32 %8, 0
  %12 = insertvalue { i32, i32 } %11, i32 %10, 1
  ret { i32, i32 } %12

bb9:                                              ; preds = %bb5
; call core::alloc::layout::Layout::from_size_align_unchecked
  %13 = call { i32, i32 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h4cb4590608b1dce1E(i32 %val, i32 1) #10
  %_13.0 = extractvalue { i32, i32 } %13, 0
  %_13.1 = extractvalue { i32, i32 } %13, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  store i32 %_13.0, i32* %14, align 4
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_13.1, i32* %15, align 4
  br label %bb11
}

; core::alloc::layout::Layout::dangling
; Function Attrs: inlinehint nounwind
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17hf14a4bd29e06e393E({ i32, i32 }* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
; call core::alloc::layout::Layout::align
  %_3 = call i32 @_ZN4core5alloc6layout6Layout5align17h527130c563a4093bE({ i32, i32 }* align 4 %self) #10
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i32*
  store i32 %_3, i32* %1, align 4
  %2 = load i8*, i8** %0, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17habfca77c7f4a15d1E"(i8* %2) #10
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; core::slice::<impl [T]>::as_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h12be00faabfb830dE"([0 x i8]* align 1 %self.0, i32 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; core::option::Option<T>::map_or_else
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17h9d4964ef9d1da69bE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i8* align 1 %1, i32 %2, i32* align 4 %default) unnamed_addr #0 {
start:
  %_12 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %_7 = alloca { i8*, i32 }, align 4
  %self = alloca { i8*, i32 }, align 4
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 0
  store i8* %1, i8** %3, align 4
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 1
  store i32 %2, i32* %4, align 4
  store i8 1, i8* %_12, align 1
  store i8 1, i8* %_11, align 1
  %5 = bitcast { i8*, i32 }* %self to {}**
  %6 = load {}*, {}** %5, align 4
  %7 = icmp eq {}* %6, null
  %_4 = select i1 %7, i32 0, i32 1
  switch i32 %_4, label %bb2 [
    i32 0, label %bb1
    i32 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_12, align 1
; call alloc::fmt::format::{{closure}}
  call void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h1a93e6cb4ba4055fE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i32* align 4 %default) #10
  br label %bb5

bb3:                                              ; preds = %start
  %8 = bitcast { i8*, i32 }* %self to { [0 x i8]*, i32 }*
  %9 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %8, i32 0, i32 0
  %t.0 = load [0 x i8]*, [0 x i8]** %9, align 4, !nonnull !0, !align !2, !noundef !0
  %10 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %8, i32 0, i32 1
  %t.1 = load i32, i32* %10, align 4
  store i8 0, i8* %_11, align 1
  %11 = bitcast { i8*, i32 }* %_7 to { [0 x i8]*, i32 }*
  %12 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %11, i32 0, i32 0
  store [0 x i8]* %t.0, [0 x i8]** %12, align 4
  %13 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %11, i32 0, i32 1
  store i32 %t.1, i32* %13, align 4
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_7, i32 0, i32 0
  %15 = load i8*, i8** %14, align 4, !nonnull !0, !align !2, !noundef !0
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_7, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = bitcast i8* %15 to [0 x i8]*
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17he1b42da9503ba357E(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %18, i32 %17) #10
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb9

bb9:                                              ; preds = %bb5, %bb4
  %19 = load i8, i8* %_11, align 1, !range !4, !noundef !0
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb8, label %bb6

bb5:                                              ; preds = %bb1
  br label %bb9

bb6:                                              ; preds = %bb8, %bb9
  %21 = load i8, i8* %_12, align 1, !range !4, !noundef !0
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb10, label %bb7

bb8:                                              ; preds = %bb9
  br label %bb6

bb7:                                              ; preds = %bb10, %bb6
  ret void

bb10:                                             ; preds = %bb6
  br label %bb7
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h15a6291196ffc2d4E"(i8* %0) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8*, align 4
  %self = alloca i8*, align 4
  store i8* %0, i8** %self, align 4
  store i8 1, i8* %_7, align 1
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 4
  %4 = icmp eq {}* %3, null
  %_3 = select i1 %4, i32 0, i32 1
  switch i32 %_3, label %bb2 [
    i32 0, label %bb1
    i32 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = bitcast i8** %1 to %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"*
  %6 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"* %5 to %"core::alloc::AllocError"*
  %7 = bitcast i8** %1 to {}**
  store {}* null, {}** %7, align 4
  br label %bb6

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 4, !nonnull !0, !noundef !0
  store i8* %v, i8** %1, align 4
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %8 = load i8, i8* %_7, align 1, !range !4, !noundef !0
  %9 = trunc i8 %8 to i1
  br i1 %9, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %10 = load i8*, i8** %1, align 4
  ret i8* %10

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h8dcfd45ec2c3cb86E"(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %2 = alloca { i32, i32 }, align 4
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i32, i32 }* %self to i32*
  %_3 = load i32, i32* %5, align 4, !range !7, !noundef !0
  switch i32 %_3, label %bb2 [
    i32 0, label %bb1
    i32 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %7 = bitcast i32* %6 to %"core::alloc::layout::LayoutError"*
  %8 = bitcast { i32, i32 }* %2 to i32*
  store i32 1, i32* %8, align 4
  br label %bb6

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %v = load i32, i32* %9, align 4
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 %v, i32* %10, align 4
  %11 = bitcast { i32, i32 }* %2 to i32*
  store i32 0, i32* %11, align 4
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %12 = load i8, i8* %_7, align 1, !range !4, !noundef !0
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 4, !range !7, !noundef !0
  %16 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = insertvalue { i32, i32 } undef, i32 %15, 0
  %19 = insertvalue { i32, i32 } %18, i32 %17, 1
  ret { i32, i32 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::result::Result<T,E>::unwrap_unchecked
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h6c0418f5a0c268ccE"(i32 %0, i32 %1, %"core::panic::location::Location"* align 4 %2) unnamed_addr #0 {
start:
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !range !1, !noundef !0
  %7 = icmp eq i32 %6, 0
  %_2 = select i1 %7, i32 1, i32 0
  switch i32 %_2, label %bb2 [
    i32 0, label %bb3
    i32 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  %t.0 = load i32, i32* %8, align 4
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %t.1 = load i32, i32* %9, align 4, !range !6, !noundef !0
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %11 = load i32, i32* %10, align 4, !range !1, !noundef !0
  %12 = icmp eq i32 %11, 0
  %_5 = select i1 %12, i32 1, i32 0
  %13 = icmp eq i32 %_5, 0
  br i1 %13, label %bb4, label %bb5

bb1:                                              ; preds = %start
; call core::hint::unreachable_unchecked
  call void @_ZN4core4hint21unreachable_unchecked17hfd4825ba7ebcc02cE() #11
  unreachable

bb4:                                              ; preds = %bb5, %bb3
  %14 = insertvalue { i32, i32 } undef, i32 %t.0, 0
  %15 = insertvalue { i32, i32 } %14, i32 %t.1, 1
  ret { i32, i32 } %15

bb5:                                              ; preds = %bb3
  br label %bb4
}

; <T as core::convert::From<T>>::from
; Function Attrs: nounwind
define hidden void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h1bd2d124a29e4524E"() unnamed_addr #1 {
start:
  ret void
}

; <T as core::convert::From<T>>::from
; Function Attrs: nounwind
define hidden void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha7fcf6adf45932f4E"() unnamed_addr #1 {
start:
  ret void
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nounwind
define hidden { i32, i32 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1dd59a82a9cfa3b0E"(i32 %self.0, i32 %self.1) unnamed_addr #1 {
start:
; call <alloc::collections::TryReserveError as core::convert::From<alloc::collections::TryReserveErrorKind>>::from
  %0 = call { i32, i32 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17he25536b7f4d5f615E"(i32 %self.0, i32 %self.1) #10
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i32, i32 } undef, i32 %1, 0
  %4 = insertvalue { i32, i32 } %3, i32 %2, 1
  ret { i32, i32 } %4
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nounwind
define hidden i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h4819c1c0ebb0e8caE"(i8* %self) unnamed_addr #1 {
start:
; call <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h5e67f7d854551983E"(i8* %self) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hd4a2418c4454eff2E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, [0 x i8]* align 1 %s.0, i32 %s.1) unnamed_addr #0 {
start:
; call alloc::vec::Vec<T,A>::with_capacity_in
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h7182e730ed44cbb1E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, i32 %s.1) #10
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::as_ptr
  %_7 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h12be00faabfb830dE"([0 x i8]* align 1 %s.0, i32 %s.1) #10
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_9 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h9e84dbfc441e6c91E"(%"alloc::vec::Vec<u8>"* align 4 %v) #10
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::ptr::const_ptr::<impl *const T>::copy_to_nonoverlapping
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17h2c0f34c3f0c4adb5E"(i8* %_7, i8* %_9, i32 %s.1) #10
  br label %bb4

bb4:                                              ; preds = %bb3
; call alloc::vec::Vec<T,A>::set_len
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h57718995edf8e2a5E"(%"alloc::vec::Vec<u8>"* align 4 %v, i32 %s.1) #10
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; alloc::fmt::format
; Function Attrs: inlinehint nounwind
define internal void @_ZN5alloc3fmt6format17h02981f2367761faeE(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"core::fmt::Arguments"* %args) unnamed_addr #0 {
start:
  %_4 = alloca i32*, align 4
; call core::fmt::Arguments::as_str
  %1 = call { i8*, i32 } @_ZN4core3fmt9Arguments6as_str17h9a83f2f2f39f16d7E(%"core::fmt::Arguments"* align 4 %args) #10
  %_2.0 = extractvalue { i8*, i32 } %1, 0
  %_2.1 = extractvalue { i8*, i32 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast i32** %_4 to %"core::fmt::Arguments"**
  store %"core::fmt::Arguments"* %args, %"core::fmt::Arguments"** %2, align 4
  %3 = load i32*, i32** %_4, align 4, !nonnull !0, !align !3, !noundef !0
; call core::option::Option<T>::map_or_else
  call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17h9d4964ef9d1da69bE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i8* align 1 %_2.0, i32 %_2.1, i32* align 4 %3) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; alloc::fmt::format::{{closure}}
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h1a93e6cb4ba4055fE"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i32* align 4 %_1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::fmt::Arguments", align 4
  %_3 = bitcast i32* %_1 to %"core::fmt::Arguments"*
  %1 = bitcast %"core::fmt::Arguments"* %_2 to i8*
  %2 = bitcast %"core::fmt::Arguments"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 24, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17h4b8e7db510f14160E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"core::fmt::Arguments"* %_2) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint nounwind
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8a7af1c0b32f05a5E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i32 %self.1) unnamed_addr #0 {
start:
  %1 = alloca { [0 x i8]*, i32 }, align 4
  %_2 = alloca %"alloc::vec::Vec<u8>", align 4
  %2 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %1, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 4
  %3 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %1, i32 0, i32 1
  store i32 %self.1, i32* %3, align 4
  %4 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %1, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 4, !nonnull !0, !align !2, !noundef !0
  %6 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %1, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i32 } %8, i32 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i32 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i32 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
; call alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned
  call void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17heaa0328f8cec4407E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %_2, [0 x i8]* align 1 %_4.0, i32 %_4.1) #10
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::string::String::from_utf8_unchecked
  call void @_ZN5alloc6string6String19from_utf8_unchecked17h2ebe16540b026f01E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"alloc::vec::Vec<u8>"* %_2) #10
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h9e84dbfc441e6c91E"(%"alloc::vec::Vec<u8>"* align 4 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i32 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h103d86f9d5618948E"({ i8*, i32 }* align 4 %_2) #10
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4c5d534780f3b3c1E"(i8* %ptr) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; alloc::vec::Vec<T,A>::with_capacity_in
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h7182e730ed44cbb1E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, i32 %capacity) unnamed_addr #0 {
start:
; call alloc::raw_vec::RawVec<T,A>::with_capacity_in
  %1 = call { i8*, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h55b8c99b39a1f235E"(i32 %capacity) #10
  %_3.0 = extractvalue { i8*, i32 } %1, 0
  %_3.1 = extractvalue { i8*, i32 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"alloc::vec::Vec<u8>"* %0 to { i8*, i32 }*
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %_3.0, i8** %3, align 4
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %_3.1, i32* %4, align 4
  %5 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %0, i32 0, i32 1
  store i32 0, i32* %5, align 4
  ret void
}

; alloc::vec::Vec<T,A>::set_len
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h57718995edf8e2a5E"(%"alloc::vec::Vec<u8>"* align 4 %self, i32 %new_len) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  store i32 %new_len, i32* %0, align 4
  ret void
}

; alloc::alloc::alloc_zeroed
; Function Attrs: inlinehint nounwind
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17hdf42054ab4c63a99E(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %layout = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %3, align 4
; call core::alloc::layout::Layout::size
  %_2 = call i32 @_ZN4core5alloc6layout6Layout4size17h81b94236ffbf1a29E({ i32, i32 }* align 4 %layout) #10
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_4 = call i32 @_ZN4core5alloc6layout6Layout5align17h527130c563a4093bE({ i32, i32 }* align 4 %layout) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i32 %_2, i32 %_4) #10
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; alloc::alloc::alloc
; Function Attrs: inlinehint nounwind
define internal i8* @_ZN5alloc5alloc5alloc17h11036eac1048ff1bE(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %layout = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %3, align 4
; call core::alloc::layout::Layout::size
  %_2 = call i32 @_ZN4core5alloc6layout6Layout4size17h81b94236ffbf1a29E({ i32, i32 }* align 4 %layout) #10
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_4 = call i32 @_ZN4core5alloc6layout6Layout5align17h527130c563a4093bE({ i32, i32 }* align 4 %layout) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i32 %_2, i32 %_4) #10
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nounwind
define internal { i8*, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h41876cc24b877e77E(%"alloc::alloc::Global"* align 1 %self, i32 %0, i32 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 4
  %raw_ptr = alloca i8*, align 4
  %2 = alloca { i8*, i32 }, align 4
  %layout = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %4, align 4
; call core::alloc::layout::Layout::size
  %_4 = call i32 @_ZN4core5alloc6layout6Layout4size17h81b94236ffbf1a29E({ i32, i32 }* align 4 %layout) #10
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i32 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
; call core::alloc::layout::Layout::dangling
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17hf14a4bd29e06e393E({ i32, i32 }* align 4 %layout) #10
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_13.0 = load i32, i32* %6, align 4
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_13.1 = load i32, i32* %7, align 4, !range !6, !noundef !0
; call alloc::alloc::alloc
  %8 = call i8* @_ZN5alloc5alloc5alloc17h11036eac1048ff1bE(i32 %_13.0, i32 %_13.1) #10
  store i8* %8, i8** %raw_ptr, align 4
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_12.0 = load i32, i32* %9, align 4
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_12.1 = load i32, i32* %10, align 4, !range !6, !noundef !0
; call alloc::alloc::alloc_zeroed
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17hdf42054ab4c63a99E(i32 %_12.0, i32 %_12.1) #10
  store i8* %11, i8** %raw_ptr, align 4
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 4
; call core::ptr::non_null::NonNull<T>::new
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h9e7d6704f5802c65E"(i8* %_18) #10
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
; call core::option::Option<T>::ok_or
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h15a6291196ffc2d4E"(i8* %_17) #10
  br label %bb12

bb12:                                             ; preds = %bb11
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h99b36b19c0e7fc3bE"(i8* %_16) #10
  store i8* %12, i8** %_15, align 4
  br label %bb13

bb13:                                             ; preds = %bb12
  %13 = bitcast i8** %_15 to {}**
  %14 = load {}*, {}** %13, align 4
  %15 = icmp eq {}* %14, null
  %_20 = select i1 %15, i32 1, i32 0
  switch i32 %_20, label %bb15 [
    i32 0, label %bb14
    i32 1, label %bb16
  ]

bb15:                                             ; preds = %bb13
  unreachable

bb14:                                             ; preds = %bb13
  %val = load i8*, i8** %_15, align 4, !nonnull !0, !noundef !0
; call core::ptr::non_null::NonNull<[T]>::slice_from_raw_parts
  %16 = call { i8*, i32 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h63f36f1eb446d14dE"(i8* %val, i32 %_4) #10
  %_24.0 = extractvalue { i8*, i32 } %16, 0
  %_24.1 = extractvalue { i8*, i32 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  %17 = call { i8*, i32 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h513ba295a8a71605E"(%"core::panic::location::Location"* align 4 bitcast (<{ i8*, [12 x i8] }>* @alloc55 to %"core::panic::location::Location"*)) #10
  store { i8*, i32 } %17, { i8*, i32 }* %2, align 4
  br label %bb17

bb17:                                             ; preds = %bb16
  br label %bb20

bb20:                                             ; preds = %bb19, %bb17
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 4
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  ret { i8*, i32 } %23

bb18:                                             ; preds = %bb14
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %_24.0, i8** %24, align 4
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %_24.1, i32* %25, align 4
  br label %bb19

bb19:                                             ; preds = %bb5, %bb18
  br label %bb20

bb4:                                              ; preds = %bb3
; call core::ptr::non_null::NonNull<[T]>::slice_from_raw_parts
  %26 = call { i8*, i32 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h63f36f1eb446d14dE"(i8* %_7, i32 0) #10
  %_6.0 = extractvalue { i8*, i32 } %26, 0
  %_6.1 = extractvalue { i8*, i32 } %26, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %_6.0, i8** %27, align 4
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %_6.1, i32* %28, align 4
  br label %bb19
}

; alloc::alloc::dealloc
; Function Attrs: inlinehint nounwind
define internal void @_ZN5alloc5alloc7dealloc17h37077864dd772abaE(i8* %ptr, i32 %0, i32 %1) unnamed_addr #0 {
start:
  %layout = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %3, align 4
; call core::alloc::layout::Layout::size
  %_4 = call i32 @_ZN4core5alloc6layout6Layout4size17h81b94236ffbf1a29E({ i32, i32 }* align 4 %layout) #10
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_6 = call i32 @_ZN4core5alloc6layout6Layout5align17h527130c563a4093bE({ i32, i32 }* align 4 %layout) #10
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i32 %_4, i32 %_6) #10
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; alloc::slice::<impl [T]>::to_vec
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h159dfefaef8f2f58E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i32 %self.1) unnamed_addr #0 {
start:
; call alloc::slice::<impl [T]>::to_vec_in
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17hf05bd6aba487df6fE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i32 %self.1) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::slice::<impl [T]>::to_vec_in
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17hf05bd6aba487df6fE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i32 %self.1) unnamed_addr #0 {
start:
; call alloc::slice::hack::to_vec
  call void @_ZN5alloc5slice4hack6to_vec17h69308554903cdfb7E(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i32 %self.1) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::slice::hack::to_vec
; Function Attrs: inlinehint nounwind
define hidden void @_ZN5alloc5slice4hack6to_vec17h69308554903cdfb7E(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %s.0, i32 %s.1) unnamed_addr #0 {
start:
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hd4a2418c4454eff2E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %s.0, i32 %s.1) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned
; Function Attrs: nounwind
define hidden void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17heaa0328f8cec4407E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i32 %self.1) unnamed_addr #1 {
start:
; call alloc::slice::<impl [T]>::to_vec
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h159dfefaef8f2f58E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i32 %self.1) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::string::String::from_utf8_unchecked
; Function Attrs: inlinehint nounwind
define internal void @_ZN5alloc6string6String19from_utf8_unchecked17h2ebe16540b026f01E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"alloc::vec::Vec<u8>"* %bytes) unnamed_addr #0 {
start:
  %_2 = alloca %"alloc::vec::Vec<u8>", align 4
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_2 to i8*
  %2 = bitcast %"alloc::vec::Vec<u8>"* %bytes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 12, i1 false)
  %3 = bitcast %"alloc::string::String"* %0 to %"alloc::vec::Vec<u8>"*
  %4 = bitcast %"alloc::vec::Vec<u8>"* %3 to i8*
  %5 = bitcast %"alloc::vec::Vec<u8>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %4, i8* align 4 %5, i32 12, i1 false)
  ret void
}

; alloc::raw_vec::alloc_guard
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @_ZN5alloc7raw_vec11alloc_guard17hd66a8b84d3fa5f58E(i32 %alloc_size) unnamed_addr #0 {
start:
  %_7 = alloca { i32, i32 }, align 4
  %0 = alloca { i32, i32 }, align 4
  %_3 = icmp ugt i32 %alloc_size, 2147483647
  br i1 %_3, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 -2147483647, i32* %1, align 4
  br label %bb4

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_7, i32 0, i32 1
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_7, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_7, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !range !1, !noundef !0
; call <T as core::convert::Into<U>>::into
  %7 = call { i32, i32 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1dd59a82a9cfa3b0E"(i32 %4, i32 %6) #10
  %_6.0 = extractvalue { i32, i32 } %7, 0
  %_6.1 = extractvalue { i32, i32 } %7, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  store i32 %_6.0, i32* %8, align 4
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_6.1, i32* %9, align 4
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 4, !range !8, !noundef !0
  %14 = insertvalue { i32, i32 } undef, i32 %11, 0
  %15 = insertvalue { i32, i32 } %14, i32 %13, 1
  ret { i32, i32 } %15
}

; alloc::raw_vec::RawVec<T,A>::allocate_in
; Function Attrs: nounwind
define hidden { i8*, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h643b9104e857438cE"(i32 %capacity, i1 zeroext %0) unnamed_addr #1 {
start:
  %result = alloca { i8*, i32 }, align 4
  %_15 = alloca { i32, i32 }, align 4
  %_10 = alloca { i32, i32 }, align 4
  %layout = alloca { i32, i32 }, align 4
  %_4 = alloca i8, align 1
  %1 = alloca { i8*, i32 }, align 4
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %2 = zext i1 %0 to i8
  store i8 %2, i8* %init, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %3 = icmp eq i32 1, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_4, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %_6 = icmp eq i32 %capacity, 0
  %4 = zext i1 %_6 to i8
  store i8 %4, i8* %_4, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %_4, align 1, !range !4, !noundef !0
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb5, label %bb7

bb7:                                              ; preds = %bb3
; call core::alloc::layout::Layout::array
  %7 = call { i32, i32 } @_ZN4core5alloc6layout6Layout5array17hf62d9b7516c6baeeE(i32 %capacity) #10
  store { i32, i32 } %7, { i32, i32 }* %_10, align 4
  br label %bb8

bb5:                                              ; preds = %bb3
; call alloc::raw_vec::RawVec<T,A>::new_in
  %8 = call { i8*, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hcca3270ff3d1d0a6E"() #10
  store { i8*, i32 } %8, { i8*, i32 }* %1, align 4
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb29

bb29:                                             ; preds = %bb28, %bb6
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  %10 = load i8*, i8** %9, align 4, !nonnull !0, !noundef !0
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  ret { i8*, i32 } %14

bb8:                                              ; preds = %bb7
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_10, i32 0, i32 1
  %16 = load i32, i32* %15, align 4, !range !1, !noundef !0
  %17 = icmp eq i32 %16, 0
  %_12 = select i1 %17, i32 1, i32 0
  switch i32 %_12, label %bb10 [
    i32 0, label %bb11
    i32 1, label %bb9
  ]

bb10:                                             ; preds = %bb8
  unreachable

bb11:                                             ; preds = %bb8
  %18 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_10, i32 0, i32 0
  %layout.0 = load i32, i32* %18, align 4
  %19 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_10, i32 0, i32 1
  %layout.1 = load i32, i32* %19, align 4, !range !6, !noundef !0
  %20 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %layout.0, i32* %20, align 4
  %21 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %layout.1, i32* %21, align 4
; call core::alloc::layout::Layout::size
  %_16 = call i32 @_ZN4core5alloc6layout6Layout4size17h81b94236ffbf1a29E({ i32, i32 }* align 4 %layout) #10
  br label %bb12

bb9:                                              ; preds = %bb8
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17h5efd93c835d8da14E() #11
  unreachable

bb12:                                             ; preds = %bb11
; call alloc::raw_vec::alloc_guard
  %22 = call { i32, i32 } @_ZN5alloc7raw_vec11alloc_guard17hd66a8b84d3fa5f58E(i32 %_16) #10
  store { i32, i32 } %22, { i32, i32 }* %_15, align 4
  br label %bb13

bb13:                                             ; preds = %bb12
  %23 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_15, i32 0, i32 1
  %24 = load i32, i32* %23, align 4, !range !8, !noundef !0
  %25 = sub i32 %24, -2147483647
  %26 = icmp eq i32 %25, 0
  %_18 = select i1 %26, i32 0, i32 1
  switch i32 %_18, label %bb15 [
    i32 0, label %bb16
    i32 1, label %bb14
  ]

bb15:                                             ; preds = %bb13
  unreachable

bb16:                                             ; preds = %bb13
  %27 = load i8, i8* %init, align 1, !range !4, !noundef !0
  %28 = trunc i8 %27 to i1
  %_21 = zext i1 %28 to i32
  switch i32 %_21, label %bb18 [
    i32 0, label %bb19
    i32 1, label %bb17
  ]

bb14:                                             ; preds = %bb13
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17h5efd93c835d8da14E() #11
  unreachable

bb18:                                             ; preds = %bb16
  unreachable

bb19:                                             ; preds = %bb16
  %29 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_23.0 = load i32, i32* %29, align 4
  %30 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_23.1 = load i32, i32* %30, align 4, !range !6, !noundef !0
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %31 = call { i8*, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h17868327ccc4171aE"(%"alloc::alloc::Global"* align 1 %alloc, i32 %_23.0, i32 %_23.1) #10
  store { i8*, i32 } %31, { i8*, i32 }* %result, align 4
  br label %bb20

bb17:                                             ; preds = %bb16
  %32 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_25.0 = load i32, i32* %32, align 4
  %33 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_25.1 = load i32, i32* %33, align 4, !range !6, !noundef !0
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %34 = call { i8*, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hdf43b1a472c4e420E"(%"alloc::alloc::Global"* align 1 %alloc, i32 %_25.0, i32 %_25.1) #10
  store { i8*, i32 } %34, { i8*, i32 }* %result, align 4
  br label %bb21

bb21:                                             ; preds = %bb17
  br label %bb22

bb22:                                             ; preds = %bb20, %bb21
  %35 = bitcast { i8*, i32 }* %result to {}**
  %36 = load {}*, {}** %35, align 4
  %37 = icmp eq {}* %36, null
  %_27 = select i1 %37, i32 1, i32 0
  switch i32 %_27, label %bb24 [
    i32 0, label %bb25
    i32 1, label %bb23
  ]

bb20:                                             ; preds = %bb19
  br label %bb22

bb24:                                             ; preds = %bb22
  unreachable

bb25:                                             ; preds = %bb22
  %38 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %result, i32 0, i32 0
  %ptr.0 = load i8*, i8** %38, align 4, !nonnull !0, !noundef !0
  %39 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %result, i32 0, i32 1
  %ptr.1 = load i32, i32* %39, align 4
; call core::ptr::non_null::NonNull<T>::cast
  %_33 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5d96fb3c3608dd45E"(i8* %ptr.0, i32 %ptr.1) #10
  br label %bb26

bb23:                                             ; preds = %bb22
  %40 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_30.0 = load i32, i32* %40, align 4
  %41 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_30.1 = load i32, i32* %41, align 4, !range !6, !noundef !0
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17hfea4481048db140aE(i32 %_30.0, i32 %_30.1) #11
  unreachable

bb26:                                             ; preds = %bb25
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_32 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf51d9b3652c71e1dE"(i8* %_33) #10
  br label %bb27

bb27:                                             ; preds = %bb26
; call core::ptr::unique::Unique<T>::new_unchecked
  %_31 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h0f06ff19e8867dd4E"(i8* %_32) #10
  br label %bb28

bb28:                                             ; preds = %bb27
  %42 = bitcast { i8*, i32 }* %1 to i8**
  store i8* %_31, i8** %42, align 4
  %43 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %capacity, i32* %43, align 4
  %44 = bitcast { i8*, i32 }* %1 to %"alloc::alloc::Global"*
  br label %bb29
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: nounwind
define hidden void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h9da09516af760431E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i32 }* align 4 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i32, i32 } }, align 4
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i32 1, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 1
  %_5 = load i32, i32* %2, align 4
  %_4 = icmp eq i32 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %_2, align 1, !range !4, !noundef !0
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 1
  %_8 = load i32, i32* %6, align 4
; call core::alloc::layout::Layout::array
  %7 = call { i32, i32 } @_ZN4core5alloc6layout6Layout5array17hf62d9b7516c6baeeE(i32 %_8) #10
  %_7.0 = extractvalue { i32, i32 } %7, 0
  %_7.1 = extractvalue { i32, i32 } %7, 1
  br label %bb7

bb5:                                              ; preds = %bb3
  %8 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0, i32 0, i32 1
  store i32 0, i32* %8, align 4
  br label %bb11

bb11:                                             ; preds = %bb10, %bb5
  ret void

bb7:                                              ; preds = %bb6
; call core::result::Result<T,E>::unwrap_unchecked
  %9 = call { i32, i32 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h6c0418f5a0c268ccE"(i32 %_7.0, i32 %_7.1, %"core::panic::location::Location"* align 4 bitcast (<{ i8*, [12 x i8] }>* @alloc57 to %"core::panic::location::Location"*)) #10
  %layout.0 = extractvalue { i32, i32 } %9, 0
  %layout.1 = extractvalue { i32, i32 } %9, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %10 = bitcast { i8*, i32 }* %self to i8**
  %_12 = load i8*, i8** %10, align 4, !nonnull !0, !noundef !0
; call core::ptr::unique::Unique<T>::cast
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hc0dab8005e27779dE"(i8* %_12) #10
  br label %bb9

bb9:                                              ; preds = %bb8
; call <T as core::convert::Into<U>>::into
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h4819c1c0ebb0e8caE"(i8* %_11) #10
  br label %bb10

bb10:                                             ; preds = %bb9
  %11 = bitcast { i8*, { i32, i32 } }* %_9 to i8**
  store i8* %_10, i8** %11, align 4
  %12 = getelementptr inbounds { i8*, { i32, i32 } }, { i8*, { i32, i32 } }* %_9, i32 0, i32 1
  %13 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %12, i32 0, i32 0
  store i32 %layout.0, i32* %13, align 4
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %12, i32 0, i32 1
  store i32 %layout.1, i32* %14, align 4
  %15 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %16 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %15 to { i8*, { i32, i32 } }*
  %17 = bitcast { i8*, { i32, i32 } }* %16 to i8*
  %18 = bitcast { i8*, { i32, i32 } }* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %17, i8* align 4 %18, i32 12, i1 false)
  br label %bb11
}

; alloc::raw_vec::RawVec<T,A>::with_capacity_in
; Function Attrs: inlinehint nounwind
define hidden { i8*, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h55b8c99b39a1f235E"(i32 %capacity) unnamed_addr #0 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !4, !noundef !0
  %1 = trunc i8 %0 to i1
; call alloc::raw_vec::RawVec<T,A>::allocate_in
  %2 = call { i8*, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h643b9104e857438cE"(i32 %capacity, i1 zeroext %1) #10
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i8*, i32 } undef, i8* %3, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  ret { i8*, i32 } %6
}

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h103d86f9d5618948E"({ i8*, i32 }* align 4 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i32 }* %self to i8**
  %_2 = load i8*, i8** %0, align 4, !nonnull !0, !noundef !0
; call core::ptr::unique::Unique<T>::as_ptr
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h6fb70879996e4224E"(i8* %_2) #10
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: nounwind
define hidden { i8*, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hcca3270ff3d1d0a6E"() unnamed_addr #1 {
start:
  %0 = alloca { i8*, i32 }, align 4
; call core::ptr::unique::Unique<T>::dangling
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h4806824132fcbd0fE"() #10
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i8*, i32 }* %0 to i8**
  store i8* %_2, i8** %1, align 4
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 0, i32* %2, align 4
  %3 = bitcast { i8*, i32 }* %0 to %"alloc::alloc::Global"*
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 4, !nonnull !0, !noundef !0
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  ret { i8*, i32 } %9
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nounwind
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hee3a569aba881ddbE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i32 %0, i32 %1) unnamed_addr #0 {
start:
  %layout = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %3, align 4
; call core::alloc::layout::Layout::size
  %_4 = call i32 @_ZN4core5alloc6layout6Layout4size17h81b94236ffbf1a29E({ i32, i32 }* align 4 %layout) #10
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i32 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hf51d9b3652c71e1dE"(i8* %ptr) #10
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_8.0 = load i32, i32* %5, align 4
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_8.1 = load i32, i32* %6, align 4, !range !6, !noundef !0
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17h37077864dd772abaE(i8* %_6, i32 %_8.0, i32 %_8.1) #10
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  ret void
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint nounwind
define internal { i8*, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hdf43b1a472c4e420E"(%"alloc::alloc::Global"* align 1 %self, i32 %layout.0, i32 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { i8*, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h41876cc24b877e77E(%"alloc::alloc::Global"* align 1 %self, i32 %layout.0, i32 %layout.1, i1 zeroext true) #10
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = extractvalue { i8*, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i32 } %3, i32 %2, 1
  ret { i8*, i32 } %4
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint nounwind
define internal { i8*, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h17868327ccc4171aE"(%"alloc::alloc::Global"* align 1 %self, i32 %layout.0, i32 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { i8*, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h41876cc24b877e77E(%"alloc::alloc::Global"* align 1 %self, i32 %layout.0, i32 %layout.1, i1 zeroext false) #10
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = extractvalue { i8*, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i32 } %3, i32 %2, 1
  ret { i8*, i32 } %4
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h59e3f291ded76814E"(%"alloc::vec::Vec<u8>"* align 4 %self) unnamed_addr #1 {
start:
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h9e84dbfc441e6c91E"(%"alloc::vec::Vec<u8>"* align 4 %self) #10
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i32, i32* %0, align 4
; call core::ptr::slice_from_raw_parts_mut
  %1 = call { [0 x i8]*, i32 } @_ZN4core3ptr24slice_from_raw_parts_mut17h028cac9382b13c01E(i8* %_3, i32 %_5) #10
  %_2.0 = extractvalue { [0 x i8]*, i32 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i32 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h89f1f201c116fad8E"({ i8*, i32 }* align 4 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 4
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h9da09516af760431E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i32 }* align 4 %self) #10
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i32, i32* %0, align 4, !range !1, !noundef !0
  %2 = icmp eq i32 %1, 0
  %_4 = select i1 %2, i32 0, i32 1
  %3 = icmp eq i32 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i32, i32 } }*
  %6 = bitcast { i8*, { i32, i32 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 4, !nonnull !0, !noundef !0
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i32, i32 } }*
  %9 = getelementptr inbounds { i8*, { i32, i32 } }, { i8*, { i32, i32 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %9, i32 0, i32 0
  %layout.0 = load i32, i32* %10, align 4
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %9, i32 0, i32 1
  %layout.1 = load i32, i32* %11, align 4, !range !6, !noundef !0
  %_7 = bitcast { i8*, i32 }* %self to %"alloc::alloc::Global"*
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hee3a569aba881ddbE"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i32 %layout.0, i32 %layout.1) #10
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h73f5a90a3d690d94E"(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i32, i32 }, align 4
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  %5 = bitcast { i32, i32 }* %self to i32*
  %_2 = load i32, i32* %5, align 4, !range !7, !noundef !0
  switch i32 %_2, label %bb2 [
    i32 0, label %bb3
    i32 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %v = load i32, i32* %6, align 4
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 %v, i32* %7, align 4
  %8 = bitcast { i32, i32 }* %2 to i32*
  store i32 0, i32* %8, align 4
  br label %bb4

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"* %_6 to %"core::alloc::layout::LayoutError"*
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %11 = bitcast i32* %10 to %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"*
  %12 = bitcast { i32, i32 }* %2 to i32*
  store i32 1, i32* %12, align 4
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %13 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4, !range !7, !noundef !0
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = insertvalue { i32, i32 } undef, i32 %14, 0
  %18 = insertvalue { i32, i32 } %17, i32 %16, 1
  ret { i32, i32 } %18
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h99b36b19c0e7fc3bE"(i8* %0) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %1 = alloca i8*, align 4
  %self = alloca i8*, align 4
  store i8* %0, i8** %self, align 4
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 4
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i32 1, i32 0
  switch i32 %_2, label %bb2 [
    i32 0, label %bb3
    i32 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 4, !nonnull !0, !noundef !0
  store i8* %v, i8** %1, align 4
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"* %_6 to %"core::alloc::AllocError"*
  %6 = bitcast i8** %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"*
  %7 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"* %6 to %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"*
  %8 = bitcast i8** %1 to {}**
  store {}* null, {}** %8, align 4
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %9 = load i8*, i8** %1, align 4
  ret i8* %9
}

; probe1::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe15probe17h5d40123582178ca4E() unnamed_addr #1 {
start:
  %_10 = alloca [1 x { i8*, i32* }], align 4
  %_3 = alloca %"core::fmt::Arguments", align 4
  %res = alloca %"alloc::string::String", align 4
  %_1 = alloca %"alloc::string::String", align 4
; call core::fmt::ArgumentV1::new_lower_exp
  %0 = call { i8*, i32* } @_ZN4core3fmt10ArgumentV113new_lower_exp17hd3be4ae734ed4bbbE(i32* align 4 bitcast (<{ [4 x i8] }>* @alloc6 to i32*)) #10
  %_11.0 = extractvalue { i8*, i32* } %0, 0
  %_11.1 = extractvalue { i8*, i32* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [1 x { i8*, i32* }]* %_10 to { i8*, i32* }*
  %2 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %1, i32 0, i32 0
  store i8* %_11.0, i8** %2, align 4
  %3 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %1, i32 0, i32 1
  store i32* %_11.1, i32** %3, align 4
  %_7.0 = bitcast [1 x { i8*, i32* }]* %_10 to [0 x { i8*, i32* }]*
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hf736dc51eb49b2a7E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_3, [0 x { [0 x i8]*, i32 }]* align 4 bitcast (<{ i8*, [4 x i8] }>* @alloc4 to [0 x { [0 x i8]*, i32 }]*), i32 1, [0 x { i8*, i32* }]* align 4 %_7.0, i32 1) #10
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17h02981f2367761faeE(%"alloc::string::String"* sret(%"alloc::string::String") %res, %"core::fmt::Arguments"* %_3) #10
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = bitcast %"alloc::string::String"* %_1 to i8*
  %5 = bitcast %"alloc::string::String"* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %4, i8* align 4 %5, i32 12, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h49585814b31d5b1fE"(%"alloc::string::String"* %_1) #10
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: nounwind
declare dso_local zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h3d6296a9d66c57abE"(i32* align 4, %"core::fmt::Formatter"* align 4) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking9panic_fmt17h68154f52debc3fafE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 4) unnamed_addr #4

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; alloc::fmt::format::format_inner
; Function Attrs: nounwind
declare dso_local void @_ZN5alloc3fmt6format12format_inner17h4b8e7db510f14160E(%"alloc::string::String"* sret(%"alloc::string::String"), %"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @__rust_alloc_zeroed(i32, i32) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local noalias i8* @__rust_alloc(i32, i32) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @__rust_dealloc(i8*, i32, i32) unnamed_addr #1

; alloc::raw_vec::capacity_overflow
; Function Attrs: noreturn nounwind
declare dso_local void @_ZN5alloc7raw_vec17capacity_overflow17h5efd93c835d8da14E() unnamed_addr #8

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn nounwind
declare dso_local void @_ZN5alloc5alloc18handle_alloc_error17hfea4481048db140aE(i32, i32) unnamed_addr #9

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { inlinehint noreturn nounwind "target-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold noinline noreturn nounwind "target-cpu"="generic" }
attributes #5 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { noreturn nounwind "target-cpu"="generic" }
attributes #9 = { cold noreturn nounwind "target-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!0 = !{}
!1 = !{i32 0, i32 -2147483647}
!2 = !{i64 1}
!3 = !{i64 4}
!4 = !{i8 0, i8 2}
!5 = !{i32 1, i32 0}
!6 = !{i32 1, i32 -2147483647}
!7 = !{i32 0, i32 2}
!8 = !{i32 0, i32 -2147483646}
