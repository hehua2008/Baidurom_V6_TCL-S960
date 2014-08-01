.class Lorg/cybergarage/upnp/ControlPoint$1;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cybergarage/upnp/ControlPoint;

.field final synthetic val$locationUrl:Ljava/net/URL;

.field final synthetic val$ssdpPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;


# direct methods
.method constructor <init>(Lorg/cybergarage/upnp/ControlPoint;Ljava/net/URL;Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint$1;->this$0:Lorg/cybergarage/upnp/ControlPoint;

    iput-object p2, p0, Lorg/cybergarage/upnp/ControlPoint$1;->val$locationUrl:Ljava/net/URL;

    iput-object p3, p0, Lorg/cybergarage/upnp/ControlPoint$1;->val$ssdpPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 355
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getNewParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 358
    .local v1, parser:Lorg/cybergarage/xml/Parser;
    :try_start_0
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint$1;->val$locationUrl:Ljava/net/URL;

    invoke-virtual {v1, v4}, Lorg/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 359
    .local v3, rootNode:Lorg/cybergarage/xml/Node;
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint$1;->this$0:Lorg/cybergarage/upnp/ControlPoint;

    #calls: Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;
    invoke-static {v4, v3}, Lorg/cybergarage/upnp/ControlPoint;->access$000(Lorg/cybergarage/upnp/ControlPoint;Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 360
    .local v2, rootDev:Lorg/cybergarage/upnp/Device;
    if-nez v2, :cond_0

    .line 371
    .end local v2           #rootDev:Lorg/cybergarage/upnp/Device;
    .end local v3           #rootNode:Lorg/cybergarage/xml/Node;
    :goto_0
    return-void

    .line 363
    .restart local v2       #rootDev:Lorg/cybergarage/upnp/Device;
    .restart local v3       #rootNode:Lorg/cybergarage/xml/Node;
    :cond_0
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint$1;->val$ssdpPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 364
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addDevice++++rootdev.getUDN+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint$1;->this$0:Lorg/cybergarage/upnp/ControlPoint;

    #calls: Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/xml/Node;Lorg/cybergarage/upnp/Device;)V
    invoke-static {v4, v3, v2}, Lorg/cybergarage/upnp/ControlPoint;->access$100(Lorg/cybergarage/upnp/ControlPoint;Lorg/cybergarage/xml/Node;Lorg/cybergarage/upnp/Device;)V
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    .end local v2           #rootDev:Lorg/cybergarage/upnp/Device;
    .end local v3           #rootNode:Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Lorg/cybergarage/xml/ParserException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
