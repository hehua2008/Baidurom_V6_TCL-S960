.class public Lcom/google/api/client/http/protobuf/ProtoHttpContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "ProtoHttpContent.java"


# instance fields
.field private final message:Lcom/google/protobuf/MessageLite;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 61
    const-string v0, "application/x-protobuf"

    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v0, "application/x-protobuf"

    iput-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->type:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    iput-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->message:Lcom/google/protobuf/MessageLite;

    .line 63
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->message:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getMessage()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->message:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/protobuf/ProtoHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/protobuf/ProtoHttpContent;
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;

    .line 100
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/protobuf/ProtoHttpContent;
    .locals 0
    .parameter "type"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->type:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->message:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageLite;->writeTo(Ljava/io/OutputStream;)V

    .line 77
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 78
    return-void
.end method
