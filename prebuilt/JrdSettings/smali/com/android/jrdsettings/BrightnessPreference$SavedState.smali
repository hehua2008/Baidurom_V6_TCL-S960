.class Lcom/android/jrdsettings/BrightnessPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/BrightnessPreference;
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
            "Lcom/android/jrdsettings/BrightnessPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field automatic:Z

.field automaticEco:Z

.field curBrightness:I

.field oldAutomatic:Z

.field oldAutomaticEco:Z

.field oldProgress:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 740
    new-instance v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/jrdsettings/BrightnessPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 706
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->automatic:Z

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->progress:I

    .line 709
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldProgress:I

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->curBrightness:I

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->automaticEco:Z

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldAutomaticEco:Z

    .line 718
    return-void

    :cond_0
    move v0, v2

    .line 707
    goto :goto_0

    :cond_1
    move v0, v2

    .line 709
    goto :goto_1

    :cond_2
    move v0, v2

    .line 714
    goto :goto_2

    :cond_3
    move v1, v2

    .line 715
    goto :goto_3
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 737
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 738
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 722
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 723
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->curBrightness:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->automaticEco:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldAutomaticEco:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    return-void

    :cond_0
    move v0, v2

    .line 723
    goto :goto_0

    :cond_1
    move v1, v2

    .line 725
    goto :goto_1

    :cond_2
    move v0, v2

    .line 730
    goto :goto_2

    :cond_3
    move v3, v2

    .line 731
    goto :goto_3
.end method
