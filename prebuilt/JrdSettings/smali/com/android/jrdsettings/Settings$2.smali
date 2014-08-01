.class Lcom/android/jrdsettings/Settings$2;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/Settings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/jrdsettings/Settings$2;->this$0:Lcom/android/jrdsettings/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 246
    .local v2, info:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/jrdsettings/Settings$2;->this$0:Lcom/android/jrdsettings/Settings;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    .line 247
    .local v1, adpter:Lcom/android/jrdsettings/Settings$HeaderAdapter;
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 269
    .end local v1           #adpter:Lcom/android/jrdsettings/Settings$HeaderAdapter;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string v3, "android.intent.device_add"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    iget-object v3, p0, Lcom/android/jrdsettings/Settings$2;->this$0:Lcom/android/jrdsettings/Settings;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    .line 258
    .restart local v1       #adpter:Lcom/android/jrdsettings/Settings$HeaderAdapter;
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 260
    .end local v1           #adpter:Lcom/android/jrdsettings/Settings$HeaderAdapter;
    :cond_2
    const-string v3, "android.intent.device_remove"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    iget-object v3, p0, Lcom/android/jrdsettings/Settings$2;->this$0:Lcom/android/jrdsettings/Settings;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    .line 262
    .restart local v1       #adpter:Lcom/android/jrdsettings/Settings$HeaderAdapter;
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 264
    .end local v1           #adpter:Lcom/android/jrdsettings/Settings$HeaderAdapter;
    :cond_3
    const-string v3, "android.intent.DLNA_SWITCH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/android/jrdsettings/Settings$2;->this$0:Lcom/android/jrdsettings/Settings;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    .line 266
    .restart local v1       #adpter:Lcom/android/jrdsettings/Settings$HeaderAdapter;
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
