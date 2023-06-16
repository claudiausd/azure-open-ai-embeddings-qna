from langchain.chains import ConversationalRetrievalChain

class conversationalCustomExtended(ConversationalRetrievalChain):
    def _get_docs(self, question: str, inputs: Dict[str, Any]) -> List[Document]:
        docs = self.retriever.get_relevant_documents(question, filters="metadata:'*converted/AQ CRM SaaS_Lead Submission.pdf.txt*'")
        return self._reduce_tokens_below_limit(docs)