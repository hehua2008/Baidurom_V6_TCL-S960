.class public Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordActivity;
.super Landroid/app/Activity;
.source "UserDictionaryAddWordActivity.java"


# static fields
.field static final CODE_ALREADY_PRESENT:I = 0x2

.field static final CODE_CANCEL:I = 0x1

.field static final CODE_WORD_ADDED:I = 0x0

.field public static final MODE_EDIT_ACTION:Ljava/lang/String; = "com.android.jrdsettings.USER_DICTIONARY_EDIT"

.field public static final MODE_INSERT_ACTION:Ljava/lang/String; = "com.android.jrdsettings.USER_DICTIONARY_INSERT"

.field private static final STATE_KEY_IS_OPEN:Ljava/lang/String; = "isOpen"


# instance fields
.field private mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private reportBackToCaller(ILandroid/os/Bundle;)V
    .locals 6
    .parameter "resultCode"
    .parameter "result"

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 91
    .local v3, senderIntent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "listener"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, listener:Ljava/lang/Object;
    instance-of v4, v0, Landroid/os/Messenger;

    if-nez v4, :cond_0

    .line 103
    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    .line 93
    check-cast v2, Landroid/os/Messenger;

    .line 95
    .local v2, messenger:Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 96
    .local v1, m:Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    iput p1, v1, Landroid/os/Message;->what:I

    .line 99
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 106
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordActivity;->reportBackToCaller(ILandroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 108
    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, parameters:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v2, p0, v0}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    .line 113
    .local v1, resultCode:I
    invoke-direct {p0, v1, v0}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordActivity;->reportBackToCaller(ILandroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v7, 0x7f0400da

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 50
    const v7, 0x7f0b0232

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 51
    .local v6, splitLineView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 52
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v2

    .line 53
    .local v2, color:I
    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 59
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.android.jrdsettings.USER_DICTIONARY_EDIT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    const/4 v4, 0x0

    .line 73
    .local v4, mode:I
    :goto_0
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    .local v1, args:Landroid/os/Bundle;
    const-string v7, "mode"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 81
    :cond_1
    new-instance v7, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v7, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    .line 82
    return-void

    .line 63
    .end local v1           #args:Landroid/os/Bundle;
    .end local v4           #mode:I
    :cond_2
    const-string v7, "com.android.jrdsettings.USER_DICTIONARY_INSERT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 64
    const/4 v4, 0x1

    .restart local v4       #mode:I
    goto :goto_0

    .line 67
    .end local v4           #mode:I
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p1}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method
