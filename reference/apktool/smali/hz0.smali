.class public final Lhz0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ltw5;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;

.field public final c:Z


# direct methods
.method public constructor <init>(Ltw5;Luq4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    check-cast p1, Lhz0;

    .line 5
    .line 6
    invoke-interface {p2}, Luq4;->isRequired()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p0, Lhz0;->c:Z

    .line 11
    .line 12
    iget-object p1, p1, Lhz0;->a:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lhz0;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p2}, Luq4;->getKey()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lhz0;->b:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lhz0;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
