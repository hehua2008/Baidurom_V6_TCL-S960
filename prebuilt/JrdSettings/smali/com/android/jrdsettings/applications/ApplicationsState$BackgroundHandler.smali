.class Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundHandler"
.end annotation


# static fields
.field static final MSG_LOAD_ENTRIES:I = 0x2

.field static final MSG_LOAD_ICONS:I = 0x3

.field static final MSG_LOAD_SIZES:I = 0x4

.field static final MSG_REBUILD_LIST:I = 0x1


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/jrdsettings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    .line 933
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 876
    new-instance v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 934
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 939
    const/4 v8, 0x0

    .line 940
    .local v8, rebuildingSessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$Session;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v11, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 941
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 942
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    .end local v8           #rebuildingSessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$Session;>;"
    .local v9, rebuildingSessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$Session;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v8, v9

    .line 945
    .end local v9           #rebuildingSessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$Session;>;"
    .restart local v8       #rebuildingSessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$Session;>;"
    :cond_0
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 946
    if-eqz v8, :cond_1

    .line 947
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 948
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    invoke-virtual {v10}, Lcom/android/jrdsettings/applications/ApplicationsState$Session;->handleRebuildList()V

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 945
    .end local v2           #i:I
    :catchall_0
    move-exception v10

    :goto_1
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 952
    :cond_1
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 1053
    :goto_2
    :pswitch_0
    return-void

    .line 956
    :pswitch_1
    const/4 v7, 0x0

    .line 957
    .local v7, numDone:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v11, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 959
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    const/4 v10, 0x6

    if-ge v7, v10, :cond_4

    .line 960
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v10, :cond_2

    .line 961
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 962
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x6

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 964
    .local v4, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 966
    .end local v4           #m:Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 967
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v12, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 968
    add-int/lit8 v7, v7, 0x1

    .line 969
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-virtual {v10, v3}, Lcom/android/jrdsettings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 959
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 973
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 975
    const/4 v10, 0x6

    if-lt v7, v10, :cond_5

    .line 976
    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 973
    :catchall_1
    move-exception v10

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v10

    .line 978
    :cond_5
    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 982
    .end local v2           #i:I
    .end local v7           #numDone:I
    :pswitch_2
    const/4 v7, 0x0

    .line 983
    .restart local v7       #numDone:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v11, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 985
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_a

    const/4 v10, 0x2

    if-ge v7, v10, :cond_a

    .line 986
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 987
    .local v1, entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    iget-object v10, v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget-boolean v10, v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v10, :cond_9

    .line 988
    :cond_6
    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 989
    :try_start_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/jrdsettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10, v12}, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 990
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v10, :cond_7

    .line 991
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 992
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x6

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 994
    .restart local v4       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 996
    .end local v4           #m:Landroid/os/Message;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 998
    :cond_8
    monitor-exit v1

    .line 985
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 998
    :catchall_2
    move-exception v10

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v10

    .line 1002
    .end local v1           #entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    :catchall_3
    move-exception v10

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v10

    :cond_a
    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1003
    if-lez v7, :cond_b

    .line 1004
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1005
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1008
    :cond_b
    const/4 v10, 0x2

    if-lt v7, v10, :cond_c

    .line 1009
    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1011
    :cond_c
    const/4 v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1015
    .end local v2           #i:I
    .end local v7           #numDone:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v11, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1017
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 1019
    monitor-exit v11

    goto/16 :goto_2

    .line 1050
    :catchall_4
    move-exception v10

    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v10

    .line 1022
    :cond_d
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1023
    .local v5, now:J
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_13

    .line 1024
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 1025
    .restart local v1       #entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    iget-wide v12, v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v14, -0x1

    cmp-long v10, v12, v14

    if-eqz v10, :cond_e

    iget-boolean v10, v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v10, :cond_12

    .line 1026
    :cond_e
    iget-wide v12, v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_f

    iget-wide v12, v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v14, 0x4e20

    sub-long v14, v5, v14

    cmp-long v10, v12, v14

    if-gez v10, :cond_11

    .line 1028
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v10, :cond_10

    .line 1029
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1030
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x6

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1032
    .restart local v4       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1034
    .end local v4           #m:Landroid/os/Message;
    :cond_10
    iput-wide v5, v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 1035
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v12, v1, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v12, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1036
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/jrdsettings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 1039
    :cond_11
    monitor-exit v11

    goto/16 :goto_2

    .line 1023
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1042
    .end local v1           #entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_14

    .line 1043
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1044
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1045
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1047
    .restart local v4       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/jrdsettings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/jrdsettings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/ApplicationsState;->mMainHandler:Lcom/android/jrdsettings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1050
    .end local v4           #m:Landroid/os/Message;
    :cond_14
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_2

    .line 945
    .end local v2           #i:I
    .end local v5           #now:J
    .end local v8           #rebuildingSessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$Session;>;"
    .restart local v9       #rebuildingSessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$Session;>;"
    :catchall_5
    move-exception v10

    move-object v8, v9

    .end local v9           #rebuildingSessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$Session;>;"
    .restart local v8       #rebuildingSessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$Session;>;"
    goto/16 :goto_1

    .line 952
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
