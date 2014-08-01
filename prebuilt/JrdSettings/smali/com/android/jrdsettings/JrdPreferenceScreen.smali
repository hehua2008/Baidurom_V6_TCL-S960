.class public Lcom/android/jrdsettings/JrdPreferenceScreen;
.super Landroid/preference/Preference;
.source "JrdPreferenceScreen.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private isClick:Z

.field private isLegalDisplay:Z

.field private mContext:Landroid/content/Context;

.field private mDoublePressRunnable:Ljava/lang/Runnable;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->isClick:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->isLegalDisplay:Z

    .line 28
    iput-object p1, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mContext:Landroid/content/Context;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->isLegalDisplay:Z

    .line 31
    new-instance v0, Lcom/android/jrdsettings/JrdPreferenceScreen$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/JrdPreferenceScreen$1;-><init>(Lcom/android/jrdsettings/JrdPreferenceScreen;)V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Lcom/android/jrdsettings/JrdPreferenceScreen$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/JrdPreferenceScreen$2;-><init>(Lcom/android/jrdsettings/JrdPreferenceScreen;)V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mDoublePressRunnable:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/JrdPreferenceScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdPreferenceScreen;->showLegalDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/jrdsettings/JrdPreferenceScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->isClick:Z

    return p1
.end method

.method private showLegalDialog()V
    .locals 6

    .prologue
    .line 47
    iget-object v3, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mContext:Landroid/content/Context;

    const v4, 0x7f090936

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 49
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mContext:Landroid/content/Context;

    const v4, 0x7f090937

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 51
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 55
    .local v1, textDlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 62
    iput-object p1, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mView:Landroid/view/View;

    .line 63
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->isLegalDisplay:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->isClick:Z

    .line 83
    iget-object v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mDoublePressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->isClick:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
