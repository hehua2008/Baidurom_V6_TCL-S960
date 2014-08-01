.class Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;
.super Ljava/lang/Object;
.source "PrototypeFactory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/functors/PrototypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrototypeSerializationFactory"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x78ce4155b63c4f51L


# instance fields
.field private final iPrototype:Ljava/io/Serializable;


# direct methods
.method private constructor <init>(Ljava/io/Serializable;)V
    .locals 0
    .parameter "prototype"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;->iPrototype:Ljava/io/Serializable;

    .line 167
    return-void
.end method

.method constructor <init>(Ljava/io/Serializable;Lorg/apache/commons/collections/functors/PrototypeFactory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;-><init>(Ljava/io/Serializable;)V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 175
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x200

    invoke-direct {v2, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 176
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 178
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    .local v5, out:Ljava/io/ObjectOutputStream;
    iget-object v6, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;->iPrototype:Ljava/io/Serializable;

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 181
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 183
    .local v4, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    .line 191
    if-eqz v1, :cond_0

    .line 192
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 198
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 199
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 183
    :cond_1
    :goto_1
    return-object v6

    .line 186
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v4           #in:Ljava/io/ObjectInputStream;
    .end local v5           #out:Ljava/io/ObjectOutputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v3

    .local v3, ex:Ljava/lang/ClassNotFoundException;
    :goto_2
    :try_start_4
    new-instance v6, Lorg/apache/commons/collections/FunctorException;

    invoke-direct {v6, v3}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    .end local v3           #ex:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v6

    .line 191
    :goto_3
    if-eqz v0, :cond_2

    .line 192
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 198
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    .line 199
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 190
    :cond_3
    :goto_5
    throw v6

    .line 188
    :catch_1
    move-exception v3

    .local v3, ex:Ljava/io/IOException;
    :goto_6
    :try_start_7
    new-instance v6, Lorg/apache/commons/collections/FunctorException;

    invoke-direct {v6, v3}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 194
    .end local v3           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_4

    .line 201
    :catch_3
    move-exception v7

    goto :goto_5

    .line 194
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    .restart local v5       #out:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v7

    goto :goto_0

    .line 201
    :catch_5
    move-exception v7

    goto :goto_1

    .line 190
    .end local v4           #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 188
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 186
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method
