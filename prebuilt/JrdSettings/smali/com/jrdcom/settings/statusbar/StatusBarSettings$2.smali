.class Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;
.super Ljava/lang/Thread;
.source "StatusBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/settings/statusbar/StatusBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;


# direct methods
.method constructor <init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 108
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 109
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    .line 112
    .local v7, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    .line 116
    .local v0, appInfo:Lcom/jrdcom/settings/statusbar/AppInfo;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_4

    .line 117
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 119
    .local v11, info:Landroid/content/pm/ApplicationInfo;
    const/4 v12, 0x0

    .line 120
    .local v12, packageInfo:Landroid/content/pm/PackageInfo;
    const-wide/16 v5, 0x0

    .line 122
    .local v5, installTime:J
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$100(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 127
    :goto_2
    if-eqz v12, :cond_2

    .line 128
    iget-wide v5, v12, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #calls: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->isThirdApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v1, v11}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$200(Lcom/jrdcom/settings/statusbar/StatusBarSettings;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 116
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 123
    :catch_0
    move-exception v9

    .line 124
    .local v9, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v9           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v3, 0x0

    .line 137
    .local v3, intercepted:Z
    :try_start_1
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mNotificationManager:Landroid/app/INotificationManager;
    invoke-static {v1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$300(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areStatusBarInterceptedForPackage(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 143
    :goto_4
    new-instance v0, Lcom/jrdcom/settings/statusbar/AppInfo;

    .end local v0           #appInfo:Lcom/jrdcom/settings/statusbar/AppInfo;
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$100(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$100(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/jrdcom/settings/statusbar/AppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/String;J)V

    .line 146
    .restart local v0       #appInfo:Lcom/jrdcom/settings/statusbar/AppInfo;
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$400(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 147
    :try_start_2
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$400(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 139
    :catch_1
    move-exception v8

    .line 140
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 154
    .end local v3           #intercepted:Z
    .end local v5           #installTime:J
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v11           #info:Landroid/content/pm/ApplicationInfo;
    .end local v12           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$400(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->INSTALL_COMPARATOR:Ljava/util/Comparator;
    invoke-static {v2}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$500(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$2;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$600(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v13, 0x12c

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
