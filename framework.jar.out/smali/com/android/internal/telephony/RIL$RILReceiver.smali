.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field mStoped:Z

.field mySimId:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;I)V

    .line 629
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/RIL;I)V
    .locals 1
    .parameter
    .parameter "simId"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    .line 632
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 633
    iput p2, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    .line 634
    return-void
.end method

.method private getRilSocketName(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 637
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 638
    sget-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    .line 644
    :goto_0
    return-object v0

    .line 639
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 640
    sget-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_3:Ljava/lang/String;

    goto :goto_0

    .line 641
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 642
    sget-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_4:Ljava/lang/String;

    goto :goto_0

    .line 644
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 650
    const/4 v8, 0x0

    .line 651
    .local v8, retryCount:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v12

    .line 656
    .local v12, socketRil:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    if-eqz v15, :cond_0

    .line 784
    :goto_1
    return-void

    .line 658
    :cond_0
    const/4 v10, 0x0

    .line 661
    .local v10, s:Landroid/net/LocalSocket;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v12

    .line 664
    const/4 v6, 0x0

    .line 665
    .local v6, m3GsimId:I
    invoke-static {}, Lcom/android/internal/telephony/RIL;->get3GSimId()I

    move-result v6

    .line 667
    const/4 v15, 0x1

    if-lt v6, v15, :cond_3

    .line 668
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    if-nez v15, :cond_2

    .line 669
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v12

    .line 674
    :cond_1
    :goto_2
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "3G switched, switch sockets ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x1

    #setter for: Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$402(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_3
    :try_start_1
    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 684
    .end local v10           #s:Landroid/net/LocalSocket;
    .local v11, s:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v15, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v12, v15}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 686
    .local v4, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v11, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 719
    const/4 v8, 0x0

    .line 721
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v11, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 722
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Connected to \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 724
    const/4 v5, 0x0

    .line 726
    .local v5, length:I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 731
    .local v3, is:Ljava/io/InputStream;
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v3, v15}, Lcom/android/internal/telephony/RIL;->access$500(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v5

    .line 733
    if-gez v5, :cond_7

    .line 755
    .end local v3           #is:Ljava/io/InputStream;
    :goto_5
    :try_start_5
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Disconnected from \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v16, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 761
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 765
    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 766
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-static {v15}, Lcom/android/internal/telephony/RILRequest;->resetSerial(I)V

    .line 769
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v15, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 770
    const/4 v2, 0x0

    .local v2, i:I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, sz:I
    :goto_7
    if-ge v2, v13, :cond_8

    .line 771
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/RILRequest;

    .line 772
    .local v9, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 773
    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 770
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 671
    .end local v2           #i:I
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    .end local v9           #rr:Lcom/android/internal/telephony/RILRequest;
    .end local v11           #s:Landroid/net/LocalSocket;
    .end local v13           #sz:I
    .restart local v10       #s:Landroid/net/LocalSocket;
    :cond_2
    :try_start_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    if-ne v15, v6, :cond_1

    .line 672
    sget-object v12, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    goto/16 :goto_2

    .line 677
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    #setter for: Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$402(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3

    .line 777
    .end local v6           #m3GsimId:I
    .end local v10           #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v14

    .line 778
    .local v14, tr:Ljava/lang/Throwable;
    const-string v15, "RILJ"

    const-string v16, "Uncaught exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, -0x1

    #calls: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;I)V

    goto/16 :goto_1

    .line 687
    .end local v14           #tr:Ljava/lang/Throwable;
    .restart local v6       #m3GsimId:I
    .restart local v10       #s:Landroid/net/LocalSocket;
    :catch_1
    move-exception v1

    .line 689
    .local v1, ex:Ljava/io/IOException;
    :goto_8
    if-eqz v10, :cond_4

    .line 690
    :try_start_a
    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 699
    :cond_4
    :goto_9
    const/16 v15, 0x10

    if-ne v8, v15, :cond_6

    .line 700
    :try_start_b
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket after "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " times, continuing to retry silently"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 711
    :cond_5
    :goto_a
    const-wide/16 v15, 0xfa0

    :try_start_c
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    .line 715
    :goto_b
    add-int/lit8 v8, v8, 0x1

    .line 716
    goto/16 :goto_0

    .line 704
    :cond_6
    if-lez v8, :cond_5

    const/16 v15, 0x10

    if-ge v8, v15, :cond_5

    .line 705
    :try_start_d
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket; retrying after timeout"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_a

    .line 738
    .end local v1           #ex:Ljava/io/IOException;
    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #l:Landroid/net/LocalSocketAddress;
    .restart local v5       #length:I
    .restart local v11       #s:Landroid/net/LocalSocket;
    :cond_7
    :try_start_e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 739
    .local v7, p:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 740
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v15, v7}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 745
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_4

    .line 747
    .end local v3           #is:Ljava/io/InputStream;
    .end local v7           #p:Landroid/os/Parcel;
    :catch_2
    move-exception v1

    .line 748
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_f
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket closed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 750
    .end local v1           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 751
    .restart local v14       #tr:Ljava/lang/Throwable;
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Uncaught exception read length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Exception:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_5

    .line 775
    .end local v14           #tr:Ljava/lang/Throwable;
    .restart local v2       #i:I
    .restart local v13       #sz:I
    :cond_8
    :try_start_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 776
    monitor-exit v16

    goto/16 :goto_0

    .end local v13           #sz:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    throw v15
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    .line 692
    .end local v2           #i:I
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    .end local v11           #s:Landroid/net/LocalSocket;
    .restart local v1       #ex:Ljava/io/IOException;
    .restart local v10       #s:Landroid/net/LocalSocket;
    :catch_4
    move-exception v15

    goto/16 :goto_9

    .line 712
    :catch_5
    move-exception v15

    goto/16 :goto_b

    .line 762
    .end local v1           #ex:Ljava/io/IOException;
    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v4       #l:Landroid/net/LocalSocketAddress;
    .restart local v5       #length:I
    .restart local v11       #s:Landroid/net/LocalSocket;
    :catch_6
    move-exception v15

    goto/16 :goto_6

    .line 687
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    :catch_7
    move-exception v1

    move-object v10, v11

    .end local v11           #s:Landroid/net/LocalSocket;
    .restart local v10       #s:Landroid/net/LocalSocket;
    goto/16 :goto_8
.end method
