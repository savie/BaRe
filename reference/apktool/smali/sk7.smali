.class public final Lsk7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljv1;
.implements Lzx1;


# instance fields
.field public final a:Ln41;

.field public final b:Lox1;


# direct methods
.method public constructor <init>(Ln41;Lox1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsk7;->a:Ln41;

    .line 5
    .line 6
    iput-object p2, p0, Lsk7;->b:Lox1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lzx1;
    .locals 0

    .line 1
    iget-object p0, p0, Lsk7;->a:Ln41;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContext()Lox1;
    .locals 0

    .line 1
    iget-object p0, p0, Lsk7;->b:Lox1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lsk7;->a:Ln41;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljv1;->resumeWith(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
