.class public Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;
.super Ljava/lang/Object;
.source "Lyrics3v1Iterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private lastIndex:I

.field private removeIndex:I

.field private tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;


# direct methods
.method public constructor <init>(Lorg/farng/mp3/lyrics3/Lyrics3v1;)V
    .locals 2
    .parameter "lyrics3v1Tag"

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;

    .line 15
    iput v1, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    .line 16
    iput v1, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    .line 22
    iput-object p1, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;

    .line 23
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-virtual {v0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    iget-object v1, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-virtual {v1}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 31
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    iget v4, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 32
    .local v1, nextIndex:I
    iget v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    iput v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    .line 34
    iget v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    if-ltz v2, :cond_1

    .line 35
    if-ltz v1, :cond_0

    .line 36
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, line:Ljava/lang/String;
    :goto_0
    iput v1, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    .line 44
    return-object v0

    .line 38
    .end local v0           #line:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #line:Ljava/lang/String;
    goto :goto_0

    .line 42
    .end local v0           #line:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v3, "Iteration has no more elements."

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, lyric:Ljava/lang/String;
    iget-object v1, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1Iterator;->tag:Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-virtual {v1, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->setLyric(Ljava/lang/String;)V

    .line 51
    return-void
.end method
