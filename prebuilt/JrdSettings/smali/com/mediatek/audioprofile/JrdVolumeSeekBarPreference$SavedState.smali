.class Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "JrdVolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState$1;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 292
    new-instance v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    .line 293
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mVolume:I

    .line 294
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mOriginalVolume:I

    .line 295
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mSystemVolume:I

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 317
    return-void
.end method


# virtual methods
.method getVolumeStore()Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    .line 311
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 300
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 302
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    iget v0, v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    iget v0, v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mOriginalVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->mVolumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    iget v0, v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mSystemVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    :cond_0
    return-void
.end method
