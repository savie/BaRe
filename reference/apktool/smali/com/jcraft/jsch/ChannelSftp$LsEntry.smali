.class public Lcom/jcraft/jsch/ChannelSftp$LsEntry;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/jcraft/jsch/ChannelSftp$LsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/jcraft/jsch/SftpATTRS;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->c:Lcom/jcraft/jsch/SftpATTRS;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->compareTo(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I

    move-result p0

    return p0
.end method

.method public final getAttrs()Lcom/jcraft/jsch/SftpATTRS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->c:Lcom/jcraft/jsch/SftpATTRS;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLongname()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
