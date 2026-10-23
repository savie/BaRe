.class public final Lgi5;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Ldv1;


# direct methods
.method public constructor <init>(Ldv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgi5;->a:Ldv1;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lfi5;

    .line 7
    .line 8
    iget-object p0, p0, Lgi5;->a:Ldv1;

    .line 9
    .line 10
    iget-object p0, p0, Ldv1;->a:Lox1;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lfi5;-><init>(Lox1;Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
