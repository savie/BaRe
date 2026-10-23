.class Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$KeySet$1;
.super Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$KeySet;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$KeySet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$KeySet$1;->this$1:Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$KeySet;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->nextNode()Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$Node;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 6
    .line 7
    return-object p0
.end method
