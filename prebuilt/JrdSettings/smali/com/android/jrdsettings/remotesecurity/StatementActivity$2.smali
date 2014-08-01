.class Lcom/android/jrdsettings/remotesecurity/StatementActivity$2;
.super Ljava/lang/Object;
.source "StatementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/remotesecurity/StatementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/StatementActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/StatementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/StatementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/StatementActivity;

    const-class v2, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, gmailIntent:Landroid/content/Intent;
    const-string v1, "isloginIn"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/StatementActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/StatementActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/StatementActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 74
    return-void
.end method
