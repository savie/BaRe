.class public final synthetic Lsm5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field public final synthetic a:Ll02;


# direct methods
.method public synthetic constructor <init>(Ll02;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsm5;->a:Ll02;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lsm5;->a:Ll02;

    .line 2
    .line 3
    iget-object v0, p0, Ll02;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lvz0;

    .line 6
    .line 7
    iget-object v1, p0, Ll02;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lbq4;

    .line 10
    .line 11
    iget-object p0, p0, Ll02;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    new-instance v2, Lum5;

    .line 16
    .line 17
    iget v1, v1, Lbq4;->a:I

    .line 18
    .line 19
    invoke-direct {v2, p1, v1, p0}, Lum5;-><init>(Landroid/nfc/Tag;ILjava/util/concurrent/ExecutorService;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
