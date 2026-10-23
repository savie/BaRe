.class public final synthetic Lcom/jcraft/jsch/g;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/g;->a:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/g;->a:[B

    .line 2
    .line 3
    check-cast p1, [B

    .line 4
    .line 5
    invoke-static {p1, p0}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
