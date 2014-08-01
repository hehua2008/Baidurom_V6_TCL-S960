.class Lcom/android/jrdsettings/PictureQualityToolPreference$1;
.super Ljava/lang/Object;
.source "PictureQualityToolPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/PictureQualityToolPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/PictureQualityToolPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$1;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$1;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    #setter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgressSatur:I
    invoke-static {v0, v1}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$002(Lcom/android/jrdsettings/PictureQualityToolPreference;I)I

    .line 98
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$1;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgressSatur:I
    invoke-static {v0}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$000(Lcom/android/jrdsettings/PictureQualityToolPreference;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$1;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgressSatur:I
    invoke-static {v0}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$000(Lcom/android/jrdsettings/PictureQualityToolPreference;)I

    move-result v0

    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$1;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->maxSaturRange:I
    invoke-static {v1}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$100(Lcom/android/jrdsettings/PictureQualityToolPreference;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$1;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgressSatur:I
    invoke-static {v0}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$000(Lcom/android/jrdsettings/PictureQualityToolPreference;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityGammaJni;->nativeSetCustomPQParamIndex(I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 109
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 114
    return-void
.end method
