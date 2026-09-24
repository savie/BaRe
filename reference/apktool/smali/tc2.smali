.class public final Ltc2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lch5;


# instance fields
.field public final a:Llv1;


# direct methods
.method public constructor <init>(Llv1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltc2;->a:Llv1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "data:image"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lbh5;
    .locals 0

    .line 1
    new-instance p2, Lbh5;

    .line 2
    .line 3
    new-instance p3, Lnr5;

    .line 4
    .line 5
    invoke-direct {p3, p1}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p4, Lsc2;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Ltc2;->a:Llv1;

    .line 15
    .line 16
    invoke-direct {p4, p1, p0}, Lsc2;-><init>(Ljava/lang/String;Llv1;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p3, p4}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method
