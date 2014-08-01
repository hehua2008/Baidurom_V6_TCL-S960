.class public Lorg/apache/commons/collections/BufferOverflowException;
.super Ljava/lang/RuntimeException;
.source "BufferOverflowException.java"


# instance fields
.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/BufferOverflowException;->throwable:Ljava/lang/Throwable;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p2, p0, Lorg/apache/commons/collections/BufferOverflowException;->throwable:Ljava/lang/Throwable;

    .line 62
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/commons/collections/BufferOverflowException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
