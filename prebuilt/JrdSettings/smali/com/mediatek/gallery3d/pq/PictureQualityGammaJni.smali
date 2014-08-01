.class public Lcom/mediatek/gallery3d/pq/PictureQualityGammaJni;
.super Ljava/lang/Object;
.source "PictureQualityGammaJni.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "GAMMAjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static native nativeGetCustomPQParamIndex()I
.end method

.method public static native nativeGetCustomPQParamRange()I
.end method

.method public static native nativeGetGammaIndex()I
.end method

.method public static native nativeGetGammaRange()I
.end method

.method public static native nativeSetCustomPQParamIndex(I)Z
.end method

.method public static native nativeSetGammaIndex(I)Z
.end method
