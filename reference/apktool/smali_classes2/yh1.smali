.class public final Lyh1;
.super Lkv1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lih6;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

.field public d:I


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;Lkv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyh1;->c:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkv1;-><init>(Ljv1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iput-object p1, p0, Lyh1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lyh1;->d:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lyh1;->d:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    iget-object v0, p0, Lyh1;->c:Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    move-object v5, p0

    .line 17
    invoke-static/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->l(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;Lbt3;Lkv1;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
