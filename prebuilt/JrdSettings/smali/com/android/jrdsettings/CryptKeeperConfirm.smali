.class public Lcom/android/jrdsettings/CryptKeeperConfirm;
.super Landroid/app/Fragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/CryptKeeperConfirm$Blank;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CryptKeeperConfirm"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 94
    new-instance v0, Lcom/android/jrdsettings/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/CryptKeeperConfirm$1;-><init>(Lcom/android/jrdsettings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/jrdsettings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/CryptKeeperConfirm;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/jrdsettings/CryptKeeperConfirm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/jrdsettings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/jrdsettings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/android/jrdsettings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/jrdsettings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/CryptKeeperConfirm;->mContext:Landroid/content/Context;

    .line 125
    const v0, 0x7f04002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    .line 126
    invoke-direct {p0}, Lcom/android/jrdsettings/CryptKeeperConfirm;->establishFinalConfirmationState()V

    .line 127
    iget-object v0, p0, Lcom/android/jrdsettings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
