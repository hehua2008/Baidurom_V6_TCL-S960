.class Lcom/android/server/CTAManagerService$AThread$1;
.super Landroid/os/Handler;
.source "CTAManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CTAManagerService$AThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CTAManagerService$AThread;


# direct methods
.method constructor <init>(Lcom/android/server/CTAManagerService$AThread;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/server/CTAManagerService$AThread$1;->this$0:Lcom/android/server/CTAManagerService$AThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x1

    .line 392
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v13, :cond_3

    .line 393
    const-string v0, "CTAMANAGERSERVICE"

    const-string v1, "handle start!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/server/CTAManagerService$AThread$1;->this$0:Lcom/android/server/CTAManagerService$AThread;

    #getter for: Lcom/android/server/CTAManagerService$AThread;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/CTAManagerService$AThread;->access$300(Lcom/android/server/CTAManagerService$AThread;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 396
    .local v8, mDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v0, 0x108022d

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 399
    .local v4, uid:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, api:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialogKind"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 401
    .local v6, dialogKind:I
    new-instance v2, Lcom/android/server/CTAManagerService$CheckWorker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/CTAManagerService;

    invoke-direct {v2, v0}, Lcom/android/server/CTAManagerService$CheckWorker;-><init>(Lcom/android/server/CTAManagerService;)V

    .line 403
    .local v2, worker:Lcom/android/server/CTAManagerService$CheckWorker;
    iget-object v0, p0, Lcom/android/server/CTAManagerService$AThread$1;->this$0:Lcom/android/server/CTAManagerService$AThread;

    #getter for: Lcom/android/server/CTAManagerService$AThread;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/CTAManagerService$AThread;->access$300(Lcom/android/server/CTAManagerService$AThread;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090037

    const/4 v12, 0x0

    invoke-static {v0, v1, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 404
    .local v11, v:Landroid/view/View;
    const v0, 0x102027e

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 406
    .local v9, mesgView:Landroid/widget/TextView;
    const v0, 0x102027f

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 409
    .local v3, mcheckbox:Landroid/widget/CheckBox;
    const v0, 0x1040088

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 410
    if-nez v6, :cond_2

    .line 411
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "note"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 416
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x104008a

    new-instance v0, Lcom/android/server/CTAManagerService$AThread$1$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/CTAManagerService$AThread$1$2;-><init>(Lcom/android/server/CTAManagerService$AThread$1;Lcom/android/server/CTAManagerService$CheckWorker;Landroid/widget/CheckBox;ILjava/lang/String;)V

    invoke-virtual {v12, v13, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x104008b

    new-instance v0, Lcom/android/server/CTAManagerService$AThread$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/CTAManagerService$AThread$1$1;-><init>(Lcom/android/server/CTAManagerService$AThread$1;Lcom/android/server/CTAManagerService$CheckWorker;Landroid/widget/CheckBox;ILjava/lang/String;)V

    invoke-virtual {v12, v13, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 433
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 434
    .local v7, mDialog:Landroid/app/Dialog;
    new-instance v0, Lcom/android/server/CTAManagerService$AThread$1$3;

    invoke-direct {v0, p0, v5, v4, v2}, Lcom/android/server/CTAManagerService$AThread$1$3;-><init>(Lcom/android/server/CTAManagerService$AThread$1;Ljava/lang/String;ILcom/android/server/CTAManagerService$CheckWorker;)V

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 442
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 446
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 451
    .end local v2           #worker:Lcom/android/server/CTAManagerService$CheckWorker;
    .end local v3           #mcheckbox:Landroid/widget/CheckBox;
    .end local v4           #uid:I
    .end local v5           #api:Ljava/lang/String;
    .end local v6           #dialogKind:I
    .end local v7           #mDialog:Landroid/app/Dialog;
    .end local v8           #mDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v9           #mesgView:Landroid/widget/TextView;
    .end local v11           #v:Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 412
    .restart local v2       #worker:Lcom/android/server/CTAManagerService$CheckWorker;
    .restart local v3       #mcheckbox:Landroid/widget/CheckBox;
    .restart local v4       #uid:I
    .restart local v5       #api:Ljava/lang/String;
    .restart local v6       #dialogKind:I
    .restart local v8       #mDialogBuilder:Landroid/app/AlertDialog$Builder;
    .restart local v9       #mesgView:Landroid/widget/TextView;
    .restart local v11       #v:Landroid/view/View;
    :cond_2
    if-ne v13, v6, :cond_0

    .line 413
    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 414
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "note"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 447
    .end local v2           #worker:Lcom/android/server/CTAManagerService$CheckWorker;
    .end local v3           #mcheckbox:Landroid/widget/CheckBox;
    .end local v4           #uid:I
    .end local v5           #api:Ljava/lang/String;
    .end local v6           #dialogKind:I
    .end local v8           #mDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v9           #mesgView:Landroid/widget/TextView;
    .end local v11           #v:Landroid/view/View;
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/server/CTAManagerService$AThread$1;->this$0:Lcom/android/server/CTAManagerService$AThread;

    #getter for: Lcom/android/server/CTAManagerService$AThread;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/CTAManagerService$AThread;->access$300(Lcom/android/server/CTAManagerService$AThread;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v12, "note"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 449
    .local v10, toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
