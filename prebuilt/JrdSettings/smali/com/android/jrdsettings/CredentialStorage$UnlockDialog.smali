.class Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/android/jrdsettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/CredentialStorage;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 455
    iput-object p1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const v3, 0x7f040029

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 459
    .local v2, view:Landroid/view/View;
    #getter for: Lcom/android/jrdsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/jrdsettings/CredentialStorage;->access$700(Lcom/android/jrdsettings/CredentialStorage;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 460
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 469
    .local v1, text:Ljava/lang/CharSequence;
    :goto_0
    const v3, 0x7f0b0054

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    const v3, 0x7f0b0057

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    .line 471
    iget-object v3, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v3, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 473
    const v3, 0x7f0b0055

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    .line 475
    invoke-static {}, Lcom/android/jrdsettings/CredentialStorage;->access$800()Landroid/app/AlertDialog;

    move-result-object v3

    if-nez v3, :cond_0

    .line 476
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0907b7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 481
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/jrdsettings/CredentialStorage;->access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 482
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 483
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 485
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    invoke-static {}, Lcom/android/jrdsettings/CredentialStorage;->access$800()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    .line 486
    iget-object v3, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 487
    return-void

    .line 461
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_1
    #getter for: Lcom/android/jrdsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/jrdsettings/CredentialStorage;->access$700(Lcom/android/jrdsettings/CredentialStorage;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 462
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto :goto_0

    .line 463
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_2
    #getter for: Lcom/android/jrdsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/jrdsettings/CredentialStorage;->access$700(Lcom/android/jrdsettings/CredentialStorage;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 464
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 466
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_3
    const v3, 0x7f0907be

    new-array v4, v5, [Ljava/lang/Object;

    #getter for: Lcom/android/jrdsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/jrdsettings/CredentialStorage;->access$700(Lcom/android/jrdsettings/CredentialStorage;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/CredentialStorage;Lcom/android/jrdsettings/CredentialStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/jrdsettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 491
    return-void

    .line 490
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 494
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 500
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 501
    return-void

    .line 500
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 504
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/jrdsettings/CredentialStorage;->access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 505
    iget-boolean v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz v1, :cond_3

    .line 506
    iput-boolean v3, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 507
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    #getter for: Lcom/android/jrdsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/jrdsettings/CredentialStorage;->access$500(Lcom/android/jrdsettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 509
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    #getter for: Lcom/android/jrdsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/jrdsettings/CredentialStorage;->access$500(Lcom/android/jrdsettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 510
    .local v0, error:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    #setter for: Lcom/android/jrdsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/jrdsettings/CredentialStorage;->access$702(Lcom/android/jrdsettings/CredentialStorage;I)I

    .line 512
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    const v2, 0x7f0907c1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 517
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    #calls: Lcom/android/jrdsettings/CredentialStorage;->ensureKeyGuard()V
    invoke-static {v1}, Lcom/android/jrdsettings/CredentialStorage;->access$900(Lcom/android/jrdsettings/CredentialStorage;)V

    .line 533
    .end local v0           #error:I
    :cond_0
    :goto_0
    return-void

    .line 518
    .restart local v0       #error:I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    #setter for: Lcom/android/jrdsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/jrdsettings/CredentialStorage;->access$702(Lcom/android/jrdsettings/CredentialStorage;I)I

    .line 520
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    const v2, 0x7f0907bf

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 524
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    #calls: Lcom/android/jrdsettings/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/jrdsettings/CredentialStorage;->access$1000(Lcom/android/jrdsettings/CredentialStorage;)V

    goto :goto_0

    .line 525
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/android/jrdsettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v2}, Lcom/android/jrdsettings/CredentialStorage;->access$702(Lcom/android/jrdsettings/CredentialStorage;I)I

    .line 528
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    #calls: Lcom/android/jrdsettings/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/jrdsettings/CredentialStorage;->access$1000(Lcom/android/jrdsettings/CredentialStorage;)V

    goto :goto_0

    .line 532
    .end local v0           #error:I
    :cond_3
    iget-object v1, p0, Lcom/android/jrdsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/jrdsettings/CredentialStorage;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 497
    return-void
.end method
