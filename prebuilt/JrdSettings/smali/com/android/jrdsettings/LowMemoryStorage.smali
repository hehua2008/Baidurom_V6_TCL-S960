.class public Lcom/android/jrdsettings/LowMemoryStorage;
.super Landroid/app/Activity;
.source "LowMemoryStorage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DATA_PATH:Ljava/lang/String; = "/data"


# instance fields
.field private TAG:Ljava/lang/String;

.field private TEST:D

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFreeMem:J

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOldFreeMem:J

.field private mStrings:[Ljava/lang/String;

.field private reCreateDialog:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private sbm:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const-string v0, "LowMemoryStorage"

    iput-object v0, p0, Lcom/android/jrdsettings/LowMemoryStorage;->TAG:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    .line 25
    iput-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mStrings:[Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage;->receiver:Landroid/content/BroadcastReceiver;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/LowMemoryStorage;->reCreateDialog:Z

    .line 31
    iput-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage;->sbm:Landroid/app/StatusBarManager;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/jrdsettings/LowMemoryStorage;->TEST:D

    .line 54
    new-instance v0, Lcom/android/jrdsettings/LowMemoryStorage$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/LowMemoryStorage$2;-><init>(Lcom/android/jrdsettings/LowMemoryStorage;)V

    iput-object v0, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/16 v2, 0x400

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 39
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDataFileStats:Landroid/os/StatFs;

    .line 40
    new-instance v1, Lcom/android/jrdsettings/LowMemoryStorage$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/LowMemoryStorage$1;-><init>(Lcom/android/jrdsettings/LowMemoryStorage;)V

    iput-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage;->receiver:Landroid/content/BroadcastReceiver;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "intent.action.EXTREMELY_MODE_THRESHOLD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage;->sbm:Landroid/app/StatusBarManager;

    .line 49
    iget-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage;->sbm:Landroid/app/StatusBarManager;

    const/high16 v2, 0x121

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/android/jrdsettings/LowMemoryStorage;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    iget-object v0, p0, Lcom/android/jrdsettings/LowMemoryStorage;->sbm:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 208
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 198
    packed-switch p1, :pswitch_data_0

    .line 202
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 200
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    invoke-virtual {p0}, Lcom/android/jrdsettings/LowMemoryStorage;->refreshDialog()V

    .line 72
    iget-object v0, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public refreshDialog()V
    .locals 13

    .prologue
    .line 86
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDataFileStats:Landroid/os/StatFs;

    const-string v8, "/data"

    invoke-virtual {v7, v8}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 87
    iget-wide v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mFreeMem:J

    iput-wide v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mOldFreeMem:J

    .line 88
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mFreeMem:J

    .line 89
    iget-wide v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mOldFreeMem:J

    const-wide/32 v9, 0xa00000

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    iget-wide v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mFreeMem:J

    const-wide/32 v9, 0xa00000

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    :cond_0
    iget-wide v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mOldFreeMem:J

    const-wide/32 v9, 0xa00000

    cmp-long v7, v7, v9

    if-lez v7, :cond_7

    iget-wide v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mFreeMem:J

    const-wide/32 v9, 0xa00000

    cmp-long v7, v7, v9

    if-gtz v7, :cond_7

    .line 90
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->reCreateDialog:Z

    .line 94
    :goto_0
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->reCreateDialog:Z

    if-eqz v7, :cond_2

    .line 95
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 96
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    .line 98
    :cond_2
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mFreeMem = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mFreeMem:J

    const-wide/32 v11, 0x100000

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "M mDialog == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reCreateDialog = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/jrdsettings/LowMemoryStorage;->reCreateDialog:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    if-nez v7, :cond_3

    .line 100
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09093a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, string1:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090938

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, string3:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090939

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, string4:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09093b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, string2:Ljava/lang/String;
    iget-wide v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mFreeMem:J

    const-wide/32 v9, 0xa00000

    cmp-long v7, v7, v9

    if-gtz v7, :cond_8

    .line 105
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    iput-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mStrings:[Ljava/lang/String;

    .line 113
    :goto_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x20500bc

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mStrings:[Ljava/lang/String;

    new-instance v9, Lcom/android/jrdsettings/LowMemoryStorage$3;

    invoke-direct {v9, p0}, Lcom/android/jrdsettings/LowMemoryStorage$3;-><init>(Lcom/android/jrdsettings/LowMemoryStorage;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    .line 148
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    .line 149
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 150
    .local v6, window:Landroid/view/Window;
    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 151
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 152
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, -0x8000

    or-int/2addr v7, v8

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 153
    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 156
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #string1:Ljava/lang/String;
    .end local v3           #string2:Ljava/lang/String;
    .end local v4           #string3:Ljava/lang/String;
    .end local v5           #string4:Ljava/lang/String;
    .end local v6           #window:Landroid/view/Window;
    :cond_3
    iget-wide v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mFreeMem:J

    const-wide/32 v9, 0xf00000

    cmp-long v7, v7, v9

    if-gez v7, :cond_9

    .line 157
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/jrdsettings/LowMemoryStorage$4;

    invoke-direct {v8, p0}, Lcom/android/jrdsettings/LowMemoryStorage$4;-><init>(Lcom/android/jrdsettings/LowMemoryStorage;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 167
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 168
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 170
    :cond_4
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 171
    .local v1, mNegativeButton:Landroid/widget/Button;
    if-eqz v1, :cond_5

    .line 172
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 174
    :cond_5
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 196
    :cond_6
    :goto_2
    return-void

    .line 92
    .end local v1           #mNegativeButton:Landroid/widget/Button;
    :cond_7
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->reCreateDialog:Z

    goto/16 :goto_0

    .line 109
    .restart local v2       #string1:Ljava/lang/String;
    .restart local v3       #string2:Ljava/lang/String;
    .restart local v4       #string3:Ljava/lang/String;
    .restart local v5       #string4:Ljava/lang/String;
    :cond_8
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const/4 v8, 0x3

    aput-object v5, v7, v8

    iput-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mStrings:[Ljava/lang/String;

    goto/16 :goto_1

    .line 176
    .end local v2           #string1:Ljava/lang/String;
    .end local v3           #string2:Ljava/lang/String;
    .end local v4           #string3:Ljava/lang/String;
    .end local v5           #string4:Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/jrdsettings/LowMemoryStorage$5;

    invoke-direct {v8, p0}, Lcom/android/jrdsettings/LowMemoryStorage$5;-><init>(Lcom/android/jrdsettings/LowMemoryStorage;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 188
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_a

    .line 189
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 191
    :cond_a
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 192
    .restart local v1       #mNegativeButton:Landroid/widget/Button;
    if-eqz v1, :cond_6

    .line 193
    iget-object v7, p0, Lcom/android/jrdsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method
