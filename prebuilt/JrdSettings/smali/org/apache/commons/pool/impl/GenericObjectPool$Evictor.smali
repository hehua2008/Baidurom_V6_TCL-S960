.class Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;
.super Ljava/lang/Object;
.source "GenericObjectPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Evictor"
.end annotation


# instance fields
.field private _cancelled:Z

.field private _delay:J

.field private final this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool/impl/GenericObjectPool;J)V
    .locals 2
    .parameter "this$0"
    .parameter "delay"

    .prologue
    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->_cancelled:Z

    .line 1067
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->_delay:J

    .line 1070
    iput-wide p2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->_delay:J

    .line 1071
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 1074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->_cancelled:Z

    .line 1075
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1078
    :goto_0
    iget-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->_cancelled:Z

    if-eqz v1, :cond_1

    .line 1095
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    monitor-enter v2

    .line 1096
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1097
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->access$100(Lorg/apache/commons/pool/impl/GenericObjectPool;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 1098
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/apache/commons/pool/impl/GenericObjectPool;->access$102(Lorg/apache/commons/pool/impl/GenericObjectPool;Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 1100
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    return-void

    .line 1080
    :cond_1
    :try_start_1
    iget-wide v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->_delay:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1085
    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->evict()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1090
    :goto_2
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    invoke-static {v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->access$000(Lorg/apache/commons/pool/impl/GenericObjectPool;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1091
    :catch_0
    move-exception v0

    .line 1093
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 1081
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1083
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_1

    .line 1086
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1088
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_2

    .line 1100
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
