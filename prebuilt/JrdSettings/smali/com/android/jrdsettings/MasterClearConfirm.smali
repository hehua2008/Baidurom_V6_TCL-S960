.class public Lcom/android/jrdsettings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# static fields
.field private static final NOT_CHECKED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseInternalData:I

.field private mEraseSdCard:Z

.field private mExt:Lcom/mediatek/settings/ext/IFactoryExt;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/jrdsettings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/MasterClearConfirm$1;-><init>(Lcom/android/jrdsettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/MasterClearConfirm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mEraseInternalData:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mEraseSdCard:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/MasterClearConfirm;)Lcom/mediatek/settings/ext/IFactoryExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mExt:Lcom/mediatek/settings/ext/IFactoryExt;

    return-object v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mEraseSdCard:Z

    .line 99
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/jrdsettings/Utils;->getFactoryPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IFactoryExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mExt:Lcom/mediatek/settings/ext/IFactoryExt;

    .line 100
    if-eqz v0, :cond_0

    const-string v1, "erase_internal_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mEraseInternalData:I

    .line 102
    return-void

    :cond_1
    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 87
    const v0, 0x7f04006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 88
    invoke-direct {p0}, Lcom/android/jrdsettings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 89
    iget-object v0, p0, Lcom/android/jrdsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
