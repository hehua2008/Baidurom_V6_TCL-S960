.class Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WpsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090432

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/jrdsettings/wifi/WpsDialog;->updateDialog(Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$100(Lcom/android/jrdsettings/wifi/WpsDialog;Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 115
    :pswitch_0
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090435

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, msg:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    sget-object v2, Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    #calls: Lcom/android/jrdsettings/wifi/WpsDialog;->updateDialog(Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$100(Lcom/android/jrdsettings/wifi/WpsDialog;Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 119
    return-void

    .line 103
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090439

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090436

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090437

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090434

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStartSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "pin"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090431

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/jrdsettings/wifi/WpsDialog;->updateDialog(Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$100(Lcom/android/jrdsettings/wifi/WpsDialog;Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090430

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/jrdsettings/wifi/WpsDialog;->updateDialog(Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$100(Lcom/android/jrdsettings/wifi/WpsDialog;Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method
