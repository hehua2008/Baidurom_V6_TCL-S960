.class public Lorg/farng/mp3/filename/FilenameTokenIterator;
.super Ljava/lang/Object;
.source "FilenameTokenIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private filenameToken:Lorg/farng/mp3/filename/FilenameToken;

.field private returnedToken:Z


# direct methods
.method public constructor <init>(Lorg/farng/mp3/filename/FilenameToken;)V
    .locals 1
    .parameter "filenameToken"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/farng/mp3/filename/FilenameTokenIterator;->returnedToken:Z

    .line 30
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameTokenIterator;->filenameToken:Lorg/farng/mp3/filename/FilenameToken;

    .line 31
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/farng/mp3/filename/FilenameTokenIterator;->returnedToken:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/farng/mp3/filename/FilenameTokenIterator;->returnedToken:Z

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/farng/mp3/filename/FilenameTokenIterator;->returnedToken:Z

    .line 51
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTokenIterator;->filenameToken:Lorg/farng/mp3/filename/FilenameToken;

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration has no more elements."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method remove() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
