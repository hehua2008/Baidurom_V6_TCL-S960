.class Lcom/mediatek/nfc/CardEmulationProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "CardEmulationSettings.java"


# instance fields
.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/CardEmulationProgressCategory;->mProgress:Z

    .line 329
    const v0, 0x7f04009c

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 330
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 335
    const v1, 0x7f0b0016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v1, p0, Lcom/mediatek/nfc/CardEmulationProgressCategory;->mProgress:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    return-void

    .line 336
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/mediatek/nfc/CardEmulationProgressCategory;->mProgress:Z

    .line 341
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 342
    return-void
.end method
