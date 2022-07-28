; ModuleID = 'probe1.c4c19086-cgu.0'
source_filename = "probe1.c4c19086-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>" = type { %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>" }
%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>" = type { { i32, i32 }, i32, i8, [3 x i8] }
%"core::panic::location::Location" = type { { [0 x i8]*, i32 }, i32, i32 }

@alloc5 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"assertion failed: step != 0" }>, align 1
@alloc6 = private unnamed_addr constant <{ [89 x i8] }> <{ [89 x i8] c"/rustc/5750a6aa2777382bf421b726f234da23f990a953/library/core/src/iter/adapters/step_by.rs" }>, align 1
@alloc7 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [89 x i8] }>, <{ [89 x i8] }>* @alloc6, i32 0, i32 0, i32 0), [12 x i8] c"Y\00\00\00\15\00\00\00\09\00\00\00" }>, align 4

; core::iter::traits::iterator::Iterator::rev
; Function Attrs: inlinehint nounwind
define hidden void @_ZN4core4iter6traits8iterator8Iterator3rev17ha13417d429c4d59fE(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>"* sret(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>") %0, %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", align 4
  %1 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %_2 to i8*
  %2 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 16, i1 false)
; call core::iter::adapters::rev::Rev<T>::new
  call void @"_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h7349ab6b2227b389E"(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>"* sret(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>") %0, %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %_2) #4
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::iter::traits::iterator::Iterator::step_by
; Function Attrs: inlinehint nounwind
define hidden void @_ZN4core4iter6traits8iterator8Iterator7step_by17h2832179c323ce445E(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") %0, i32 %self.0, i32 %self.1, i32 %step) unnamed_addr #0 {
start:
; call core::iter::adapters::step_by::StepBy<I>::new
  call void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h01ffff4d6fab5e1dE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") %0, i32 %self.0, i32 %self.1, i32 %step) #4
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::iter::adapters::rev::Rev<T>::new
; Function Attrs: nounwind
define hidden void @"_ZN4core4iter8adapters3rev12Rev$LT$T$GT$3new17h7349ab6b2227b389E"(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>"* sret(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>") %0, %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %iter) unnamed_addr #1 {
start:
  %_2 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", align 4
  %1 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %_2 to i8*
  %2 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 16, i1 false)
  %3 = bitcast %"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>"* %0 to %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"*
  %4 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %3 to i8*
  %5 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %4, i8* align 4 %5, i32 16, i1 false)
  ret void
}

; core::iter::adapters::step_by::StepBy<I>::new
; Function Attrs: nounwind
define hidden void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h01ffff4d6fab5e1dE"(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") %0, i32 %iter.0, i32 %iter.1, i32 %step) unnamed_addr #1 {
start:
  %_4 = icmp ne i32 %step, 0
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_8 = sub i32 %step, 1
  %1 = bitcast %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %0 to { i32, i32 }*
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  store i32 %iter.0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  store i32 %iter.1, i32* %3, align 4
  %4 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %0, i32 0, i32 1
  store i32 %_8, i32* %4, align 4
  %5 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %0, i32 0, i32 2
  store i8 1, i8* %5, align 4
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17heb3f43a9b9884984E([0 x i8]* align 1 bitcast (<{ [27 x i8] }>* @alloc5 to [0 x i8]*), i32 27, %"core::panic::location::Location"* align 4 bitcast (<{ i8*, [12 x i8] }>* @alloc7 to %"core::panic::location::Location"*)) #5
  unreachable
}

; probe1::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe15probe17h5d40123582178ca4E() unnamed_addr #1 {
start:
  %_3 = alloca { i32, i32 }, align 4
  %_2 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", align 4
  %_1 = alloca %"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>", align 4
  %0 = bitcast { i32, i32 }* %_3 to i32*
  store i32 0, i32* %0, align 4
  %1 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_3, i32 0, i32 1
  store i32 10, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_3, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
; call core::iter::traits::iterator::Iterator::step_by
  call void @_ZN4core4iter6traits8iterator8Iterator7step_by17h2832179c323ce445E(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") %_2, i32 %3, i32 %5, i32 2) #4
  br label %bb1

bb1:                                              ; preds = %start
; call core::iter::traits::iterator::Iterator::rev
  call void @_ZN4core4iter6traits8iterator8Iterator3rev17ha13417d429c4d59fE(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>"* sret(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>") %_1, %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>"* %_2) #4
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; core::panicking::panic
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking5panic17heb3f43a9b9884984E([0 x i8]* align 1, i32, %"core::panic::location::Location"* align 4) unnamed_addr #3

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold noinline noreturn nounwind "target-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }
