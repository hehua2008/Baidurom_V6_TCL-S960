.class public Lcom/android/jrdsettings/powersaver/JrdBatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "JrdBatteryReceiver.java"


# instance fields
.field mJrdFileUtils:Landroid/os/JrdFileUtils;

.field mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryReceiver;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, action:Ljava/lang/String;
    const-string v5, "JrdBatteryReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v5, Landroid/os/JrdFileUtils;

    const-string v6, "/data/system/whitelist"

    invoke-direct {v5, v6}, Landroid/os/JrdFileUtils;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryReceiver;->mJrdFileUtils:Landroid/os/JrdFileUtils;

    .line 24
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 25
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/jrdsettings/powersaver/JrdBatteryService;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v4, service:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice.engine.isworking"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 27
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    .end local v4           #service:Landroid/content/Intent;
    :goto_0
    return-void

    .line 31
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/JrdFileUtils;->getWhiteList()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryReceiver;->mMap:Ljava/util/HashMap;

    .line 32
    iget-object v5, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryReceiver;->mMap:Ljava/util/HashMap;

    sget-object v6, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 33
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v2, mWhiteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 40
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryReceiver;->mMap:Ljava/util/HashMap;

    sget-object v6, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v5, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryReceiver;->mJrdFileUtils:Landroid/os/JrdFileUtils;

    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryReceiver;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/os/JrdFileUtils;->writeWhiteList(Ljava/util/HashMap;)V

    goto :goto_0

    .line 51
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #mWhiteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 42
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #mWhiteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_3
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 43
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
