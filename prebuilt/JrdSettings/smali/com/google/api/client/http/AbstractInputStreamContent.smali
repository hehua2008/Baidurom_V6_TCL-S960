.class public abstract Lcom/google/api/client/http/AbstractInputStreamContent;
.super Ljava/lang/Object;
.source "AbstractInputStreamContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private closeInputStream:Z

.field private encoding:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 67
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "inputStream"
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 167
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 1
    .parameter "inputStream"
    .parameter "outputStream"
    .parameter "closeInputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 203
    :cond_0
    return-void

    .line 199
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_1

    .line 200
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0
.end method


# virtual methods
.method public final getCloseInputStream()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 0
    .parameter "closeInputStream"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    .line 135
    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 0
    .parameter "encoding"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->encoding:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 0
    .parameter "type"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->type:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    invoke-static {v0, p1, v1}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 85
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 86
    return-void
.end method
