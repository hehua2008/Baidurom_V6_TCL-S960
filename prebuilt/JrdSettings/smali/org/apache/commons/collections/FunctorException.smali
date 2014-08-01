.class public Lorg/apache/commons/collections/FunctorException;
.super Ljava/lang/RuntimeException;
.source "FunctorException.java"


# static fields
.field private static final JDK_SUPPORTS_NESTED:Z

.field static class$java$lang$Throwable:Ljava/lang/Class;


# instance fields
.field private final rootCause:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, flag:Z
    :try_start_0
    sget-object v2, Lorg/apache/commons/collections/FunctorException;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/collections/FunctorException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/collections/FunctorException;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_0
    const-string v3, "getCause"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v1, 0x1

    .line 45
    :goto_1
    sput-boolean v1, Lorg/apache/commons/collections/FunctorException;->JDK_SUPPORTS_NESTED:Z

    .line 37
    return-void

    .line 40
    :cond_0
    :try_start_1
    sget-object v2, Lorg/apache/commons/collections/FunctorException;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "rootCause"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    iput-object p2, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "rootCause"

    .prologue
    .line 81
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    .line 83
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "x0"

    .prologue
    .line 30
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FunctorException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 112
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 120
    monitor-enter p1

    .line 121
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 122
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FunctorException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    return-void

    .line 125
    .end local v0           #pw:Ljava/io/PrintWriter;
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 134
    monitor-enter p1

    .line 135
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 136
    iget-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/apache/commons/collections/FunctorException;->JDK_SUPPORTS_NESTED:Z

    if-nez v0, :cond_0

    .line 137
    const-string v0, "Caused by: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method
