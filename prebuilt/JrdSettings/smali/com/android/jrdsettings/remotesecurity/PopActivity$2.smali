.class Lcom/android/jrdsettings/remotesecurity/PopActivity$2;
.super Ljava/lang/Object;
.source "PopActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/remotesecurity/PopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/PopActivity;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/PopActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/PopActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/PopActivity;

    iput-object p2, p0, Lcom/android/jrdsettings/remotesecurity/PopActivity$2;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/PopActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/PopActivity;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/PopActivity$2;->val$phoneNumber:Ljava/lang/String;

    #calls: Lcom/android/jrdsettings/remotesecurity/PopActivity;->makePhoneCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/PopActivity;->access$000(Lcom/android/jrdsettings/remotesecurity/PopActivity;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/PopActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/PopActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 76
    return-void
.end method
