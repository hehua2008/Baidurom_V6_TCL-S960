.class public Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;
.super Ljava/lang/Object;
.source "JrdVolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public mOriginalVolume:I

.field public mSystemVolume:I

.field public mVolume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mVolume:I

    .line 283
    iput v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mOriginalVolume:I

    .line 284
    iput v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mSystemVolume:I

    return-void
.end method
