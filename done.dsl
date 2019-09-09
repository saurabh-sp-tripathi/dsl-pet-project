import groovy.io.FileType

def currentDir = new File("${WORKSPACE}/d1")
currentDir.eachFile(FileType.FILES) {
  job(it.name) {
      steps {
          batchFile('echo voila')
      }
  }    
}
