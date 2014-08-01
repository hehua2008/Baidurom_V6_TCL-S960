.class Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Evictor"
.end annotation


# instance fields
.field private _cancelled:Z

.field private _delay:J

.field private final this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;J)V
    .locals 2
    .parameter "this$0"
    .parameter "delay"

    .prologue
    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    .line 1133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->_cancelled:Z

    .line 1134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->_delay:J

    .line 1137
    iput-wide p2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->_delay:J

    .line 1138
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->_cancelled:Z

    .line 1142
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1145
    :goto_0
    iget-boolean v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->_cancelled:Z

    if-eqz v3, :cond_2

    .line 1161
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    monitor-enter v4

    .line 1162
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1163
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 1164
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$102(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 1166
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1167
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 1168
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$202(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 1170
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1171
    return-void

    .line 1146
    :cond_2
    const-wide/16 v1, 0x0

    .line 1147
    .local v1, sleeptime:J
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    monitor-enter v4

    .line 1148
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-static {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)J

    move-result-wide v1

    .line 1149
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1151
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1156
    :goto_1
    :try_start_3
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-virtual {v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->evict()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 1149
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 1153
    :catch_1
    move-exception v0

    .line 1154
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_1

    .line 1170
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #sleeptime:J
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method
