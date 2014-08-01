.class public Lorg/apache/commons/collections/BufferUnderflowException;
.super Ljava/util/NoSuchElementException;
.source "BufferUnderflowException.java"


# instance fields
.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/BufferUnderflowException;->throwable:Ljava/lang/Throwable;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lorg/apache/commons/collections/BufferUnderflowException;->throwable:Ljava/lang/Throwable;

    .line 65
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/BufferUnderflowException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
